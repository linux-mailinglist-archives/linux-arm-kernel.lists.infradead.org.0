Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FAE1D9C88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2WIlr7wrnqIuHJNwDqRT6BRufZrCWtoY1SuWU+psqM=; b=sa2KqfTyOLTvko
	tVfN/YyC2PXD/jernhrgU+xlD4azq27ItVyDJRJX/549EA38+FrZ9WUh8w7wbHoTg2EHgSyCJlAlU
	c1ne0cNDls/Exn8/yOME5t4/eji33lrEAOLFAGwd6W6TlVhL/DwG01uZ8gnhSCr0L0aNG1rUcvObK
	IPB7NXR9HB90qYnnL6VOcEqs4MNYVoZ0PHohoNzBldFz1xGbTFDUJQcb9DhSlpylAwkEpi3ZI6DUE
	0Pso+rqZEwW6w2h7pTJqGQXG5aVhfyHDO13nVx4zIaIom41AukeskHWnbzQRkPDomDROjA42T1pyP
	3PeWmt7hEr3OGo7Ms+Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb54p-0003nQ-T6; Tue, 19 May 2020 16:26:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb54h-0003mu-TO
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:26:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id s8so58625wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 09:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K6T9ygmhh8EhbslL3sJRcc4x716+9VUP4WUa0BI/g7k=;
 b=KyS2adH6J20IkVkDzWeskLntpio/aiFWAT54p7fge0aGwq3syL00BvBetJl0+S1Gnw
 GXiik1Xnty5KjvC6I1Vav4WpmOS/PB7uow2Fow8lo/ak63ln61UKwoJO7dUjyRTuBvQj
 iqtvoW2rtsrfYUcOjK6uAiQl78R/CjYrHy7zZmAu3PafwnKivwYvG99IgImSE7twVEpv
 tNPInTEymxi7rKYnrKdyfChxrF6eDnUB0Q5HEoi1jdAzWmIpLSBXQQXraFWjPc+v50W2
 bNFNzqRChTJfsBt+A6gsbE4+bqe4jx+RIQxQb49wiOalqqwsK9LQYmQTy6stJrsAhD/z
 b83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K6T9ygmhh8EhbslL3sJRcc4x716+9VUP4WUa0BI/g7k=;
 b=tnfiSpIDGfFz8+ZV0744/+Z+NNSjEg+8IQbv/pzXcuMN9gCZBQf9z3kYLfmGygNSVL
 2FltLVlp3QulWoW15qIAvFqmOqFGi52Sif8kyK6IyF+iprFsBNiCTdYQG+Vawp+WyBlz
 W7EDcDvtoDAcq7L0e4Zs+CtqI1D6Rk+RgrENfhR0AfFlkAY87zVJtMua9iDtrzIPxKCN
 UUZQeSA9ihl1WpjynFkgBkgdE/i8+M9n9ZUdnFrYWaF0GHgn4Pkmiq04TzVw1Jn4+VGk
 sen9uLuBkUIl0t0IEaqw7xbU/QibujInIhCZ/EYiw9PGhcZ35aIoqjN/X8DMTTrcwBHf
 2mdg==
X-Gm-Message-State: AOAM533loWXdk7xmcQtv28pWVgKBVjbja2VIUY+q0iCZePd5y1W8StuA
 3g2J77qWklL7gOFZxowPoeHstg==
X-Google-Smtp-Source: ABdhPJwRjXPCt4dLaDXXZQvKwEnH3bzcKxN3nJxJp0U7JlJ1qTXlZcQj1Ebi+46WU21NIvSpo2QqKQ==
X-Received: by 2002:a5d:4806:: with SMTP id l6mr27114609wrq.121.1589905593900; 
 Tue, 19 May 2020 09:26:33 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:e504:4297:986:ffb0?
 ([2a01:e34:ed2f:f020:e504:4297:986:ffb0])
 by smtp.googlemail.com with ESMTPSA id x22sm203518wmi.32.2020.05.19.09.26.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 09:26:33 -0700 (PDT)
Subject: Re: [PATCH] clocksource/drivers/timer-ti-dm: Fix warning for set but
 not used
To: Tony Lindgren <tony@atomide.com>
References: <20200519155157.12804-1-tony@atomide.com>
 <2f67a110-e52f-94fc-fae2-c3171a67bb8a@linaro.org>
 <20200519160630.GV37466@atomide.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <552325fe-e759-6b22-ceee-2d0a4b3b4b2f@linaro.org>
Date: Tue, 19 May 2020 18:26:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519160630.GV37466@atomide.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092639_948240_C718F864 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMDUvMjAyMCAxODowNiwgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPiAqIERhbmllbCBMZXpj
YW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPiBbMjAwNTE5IDE2OjAxXToKPj4gT24gMTkv
MDUvMjAyMCAxNzo1MSwgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPj4+IFdlIGNhbiBnZXQgYSB3YXJu
aW5nIGZvciBkbXRpbWVyX2Nsb2Nrc291cmNlX2luaXQoKSB3aXRoICdwYScgc2V0IGJ1dAo+Pj4g
bm90IHVzZWQuIFRoaXMgd2FzIHVzZWQgaW4gdGhlIGVhcmxpZXIgcmV2aXNpb25zIG9mIHRoZSBj
b2RlIGJ1dCBubwo+Pj4gbG9uZ2VyIG5lZWRlZCwgc28gbGV0J3MgcmVtb3ZlIHRoZSB1bnVzZWQg
cGEgYW5kIG9mX3RyYW5zbGF0ZV9hZGRyZXNzKCkuCj4+PiBMZXQncyBhbHNvIGRvIGl0IGZvciBk
bXRpbWVyX2Nsb2NrZXZlbnRfaW5pdCgpIHRoYXQgaGFzIGEgc2ltaWxhciBpc3N1ZS4KPj4+Cj4+
PiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBUb255IExpbmRncmVuIDx0b255QGF0b21pZGUuY29tPgo+Pj4gLS0tCj4+Cj4+
IEFwcGxpZWQsIHRoYW5rcwo+IAo+IFRoYW5rcyEgRG8geW91IGFscmVhZHkgaGF2ZSBzb21lIGlt
bXV0YWJsZSBjb21taXQgSSBjYW4gdXNlCj4gYXMgdGhlIGJhc2UgZm9yIHRoZSBTb0MgYW5kIGR0
cyBjaGFuZ2VzPyBPciBkbyB5b3Ugd2FudCB0bwo+IHdhaXQgYSBiaXQgZm9yIHRoYXQ/CgpIaSBU
b255LAoKaHR0cHM6Ly9naXQubGluYXJvLm9yZy9wZW9wbGUvZGFuaWVsLmxlemNhbm8vbGludXgu
Z2l0L2xvZy8/aD10aW1lcnMvZHJpdmVycy90aW1lci10aQoKaXQgY29udGFpbnMgdGhlIHR3byBw
YXRjaGVzICsgdGhlIHdhcm5pbmcgZml4CgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExp
bmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwK
PGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5s
aW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
