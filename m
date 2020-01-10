Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D0C13783F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 22:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm2I48Y7R7pHNa44YHs8gRf8Dz+JcWga5d+kY7c3CSc=; b=ERl7wvADkNaE9w
	TrbOlBH+HohEE5eAO8gIpGXwzZw91eBTLCe7Uv8fsUTTzgBDdx1/SkM6iEgqIfwhjfBgeHDeq8j3h
	+eYT3KnHxBlyOJ7O8sJ7BCOxdkl/pkeIcnf5SWH7yVPHj+3ri730ynZfQ5+cZo0yig4T0F023oIfK
	KF7bV9M9SaccoJpYgulaYcVRgIiGFI4qK3TZz2qHwVW/l60dfXnlZobLYh0wrJ8qujLXfn430mx3Q
	CR1XPJKxklUD6Dn8lTFogFtFm8YGB4YDdYOJgIaKajoQIBhJLP1qmEenFQumtX6nKzK4CBNBcR5Au
	bHHKUeUmToE/g409Dsyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq1Qf-0001hS-Ub; Fri, 10 Jan 2020 21:02:49 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq1QZ-0001gO-Iv
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 21:02:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n59so1498578pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 13:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=jfaknLo6dB7P4TvTZQmRLqfYR5CIiTdIXE9lXNwSsYU=;
 b=diDEq6At2DzWHKg+ysDMV1tW4o5AwiDyePd9VJ3pD+hsHR8cFV1SQyA59/kk5j+xgK
 1TsiRsOtgi+SYWZwPpnwbgbMpOpTBFOKIhld9J4VOn7z8Dvcdp0cMv0hT4o/pvqNYmDt
 o4KzRsf6U3mSxqr+NmFY1NZJnZtU2+mfib5RYv0qXqMmAsYYbLhAWvkbyVPGWDeCmn8R
 7u0u0fxOpKaCifg3xTVtRj86GX6J5Y91BN2RZHE6YugaM1ohryvVWffdKXI4ka0Un7Ss
 RKeBRruVTUOlB+gGzitr3sXC8NAV3FbdCW7mfIrVpeM7E4B6rp/ZzqXS+QVwjmw5GjMb
 dA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=jfaknLo6dB7P4TvTZQmRLqfYR5CIiTdIXE9lXNwSsYU=;
 b=maySK1852MjukzgkaQijgt7YQohLfRga2BHdQvA3429rkcaP/9j8bnYeFlRRPsHfCF
 QlEK6vPJgY4YbVBhsFYW+Aadtgyw9wbcZ3zxE6UvfVtu+orcnt4h+gHlXEQxyzTQryT0
 JbVkFGGnNQcB4ikaWIT7vADvyXRfREmlOiGvSJssPkDJ/UvQg/x5AZp/sKzcFLVWwW1h
 6zZFUyOtuPEFFGZbbHW8X+kH9L3Rd5ac1M7PkspA6JQL0TJASU3xTCej4HUwE61BKOFK
 cR7nXQhUDbL/PGW5IfdIYl81s9Fg89UJHmXIZWkZB9RmEHcJqqJGkLXRvH8Z7G2LCPgf
 i9Lg==
X-Gm-Message-State: APjAAAW/JZl/ikXszpC+zQiSbFaQO2fGhwszwwK5pOMUZcs3wXFkEsk9
 JCabXrWXJZ+An+ByldFtuHx9pA==
X-Google-Smtp-Source: APXvYqwcK5EuXgyJPF3Ld4Ugh4h8SPw00JyrmxOuZ/D2wMI6lxIb8hITf4wySqQXcJ4mHz7I9DvGuA==
X-Received: by 2002:a17:902:ff12:: with SMTP id
 f18mr545089plj.256.1578690162146; 
 Fri, 10 Jan 2020 13:02:42 -0800 (PST)
Received: from [10.197.30.113] ([139.104.2.240])
 by smtp.gmail.com with ESMTPSA id d22sm3725278pgg.52.2020.01.10.13.02.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 13:02:41 -0800 (PST)
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [RFC PATCH v2 01/10] lib: vdso: ensure all arches have 32bit
 fallback
Date: Fri, 10 Jan 2020 11:02:38 -1000
Message-Id: <53785EAC-A04C-4B02-9698-D11D75BE2C4D@amacapital.net>
References: <87sgknrpxy.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87sgknrpxy.fsf@nanos.tec.linutronix.de>
To: Thomas Gleixner <tglx@linutronix.de>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_130243_673669_809AF503 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEphbiAxMCwgMjAyMCwgYXQgMTA6NTYgQU0sIFRob21hcyBHbGVpeG5lciA8dGdseEBs
aW51dHJvbml4LmRlPiB3cm90ZToKPiAKPiDvu79BbmR5IEx1dG9taXJza2kgPGx1dG9Aa2VybmVs
Lm9yZz4gd3JpdGVzOgo+IAo+Pj4gT24gTW9uLCBEZWMgMjMsIDIwMTkgYXQgNjozMSBBTSBDaHJp
c3RvcGhlIExlcm95Cj4+PiA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+Pj4gCj4+
PiBJbiBvcmRlciB0byBzaW1wbGlmeSBuZXh0IHN0ZXAgd2hpY2ggbW92ZXMgZmFsbGJhY2sgY2Fs
bCBhdCBhcmNoCj4+PiBsZXZlbCwgZW5zdXJlIGFsbCBhcmNoZXMgaGF2ZSBhIDMyYml0IGZhbGxi
YWNrIGluc3RlYWQgb2YgaGFuZGxpbmcKPj4+IHRoZSBsYWNrIG9mIDMyYml0IGZhbGxiYWNrIGlu
IHRoZSBjb21tb24gY29kZSBiYXNlZAo+Pj4gb24gVkRTT19IQVNfMzJCSVRfRkFMTEJBQ0sKPj4g
Cj4+IEkgZG9uJ3QgbGlrZSB0aGlzLiAgWW91J3ZlIGltcGxlbWVudGVkIHdoYXQgYXBwZWFyIHRv
IGJlIG5vbnNlbnNpY2FsCj4+IGZhbGxiYWNrcyAodGhlIDMyLWJpdCBmYWxsYmFjayBmb3IgYSA2
NC1iaXQgdkRTTyBidWlsZD8gIFRoZXJlJ3Mgbm8KPj4gc3VjaCB0aGluZykuCj4+IAo+PiBIb3cg
ZXhhY3RseSBkb2VzIHRoaXMgc2ltcGxpZnkgcGF0Y2ggMj8KPiAKPiBUaGVyZSBpcyBhIHBhdGNo
c2V0IGZyb20gVmluY2Vuem8gd2hpY2ggZmVsbCB0aHJvdWdoIHRoZSBjcmFja3Mgd2hpY2gKPiBh
ZGRyZXNzZXMgdGhlIFZEU19IQVNfMzJCSVRfRkFMTEJBQ0sgaXNzdWUgcHJvcGVybHkuIEknbSBh
Ym91dCB0byBwaWNrCj4gaXQgdXAuIFNlZToKPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzIwMTkwODMwMTM1OTAyLjIwODYxLTEtdmluY2Vuem8uZnJhc2Npbm9AYXJtLmNvbS8KPiAK
ClRoYW5rcy4gIEkgaGFkIGJlZW4gd29uZGVyaW5nIHdoeSB0aGUgY29uZGl0aW9uYWxzIHdlcmUg
c3RpbGwgdGhlcmUsIHNpbmNlIEkgcmVtZW1iZXIgc2VlaW5nIHRoZXNlIHBhdGNoZXMuCgo+IFRo
YW5rcywKPiAKPiAgICAgICAgdGdseAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
