Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1591C14AFDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 07:37:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYKaPeEqAFU8ywXbpPT+fZ7LdqqpqxHpqZZG4Whh29M=; b=K396LXjSm2wwqV
	k2/3hPmtwhpWcxiJ1ug04qsDlc72O1MUar/823omup0BzupDAQY5T4Q3G9o1dkJMkKT6Rn/oQVBKk
	DBAYr3scG0WvSY0bUMmjV48Fn+QWmlUE0JHmUGSEQ89Nbu2t84D9Y7c8v8HG3HOBV2VWP+SQZF/nR
	0vHS1VoxYHpV2PD8I8D5Dhb9EmieKgqnBh/bOsBzhw1kX0IjCHB42vfwCTM4q2K6aqW0GukY+TuA/
	u+MgZiAS05DMHfOD+pfLoWsapirR2T8L28oQc6BfsVLyh5Yl4ph0TLHqqEBGEQHce1qOou+gtljSE
	abmvU2+OXXM9YoX/qZ/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwKUm-0005KE-Rz; Tue, 28 Jan 2020 06:37:08 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKUd-0005JL-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 06:37:01 +0000
Received: by mail-qv1-xf44.google.com with SMTP id m5so2630336qvv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 22:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=0abVuQRiEoEWLaCFKSSRqYpNWOPktE+d1wvOzU3Y5QQ=;
 b=dX5ri6JWeqf2OD9HUY9VaB/KwNs/qrzPVG/Mkk6o9PIOqw2H/gbYXWgmg5n/T9sQZi
 Iu9x9L3POLnl1YchVinwocuu9ounpYF8/kx5Kl6xkZvkINd+J3VgmAAsMM4XdNmOQpGF
 n/A6miYs2pl1z68bmOVHF16tPK0qb+EWBTpkY/wDARN4JMfLDfXWnSNw6qljowznZeLw
 nC2mDCu/xZdzLMzffrfLowRJu9L4pvo4bnAdA6EAug7bCreb8yqSCB9NBnvi8MDOIkJC
 NhZM5PfIKH0yrTiGcHzwETXhAcZRM4FxAKgtCYb9TW9qoZDA0+sfnlblbnN56jONvpa4
 1ytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=0abVuQRiEoEWLaCFKSSRqYpNWOPktE+d1wvOzU3Y5QQ=;
 b=eLgL7WripQ0Kdnp6/oSruERDtrQOjM62v2WnHfge5SaWNhxP9oL0N2JYI782/JaTK5
 ZKmywo63PfgVvNuiirjUVqZQMD+CqTjNoWARLnCCgBDDQDuKjDbkMIGx19VR50qygmQQ
 BjKDtA4/8UfMzWvSUzvXBDcIe37XJX7wlSK73hWGEoVxFX3G1YoQm8iBoe0Q+aMUA98h
 AKWI+P+BaJ+oDfOLufHuGAq6MH/4kiLuoDd+LLiWPYKhuIIvD2q/KALFaTswy2UbJ2Xx
 5+GR1w3E0zfv1BRbBbFbVGlPX8RvUTzQGpAUPpTk9L5neJ6ddg6rvNPQRol9sNfwvLQK
 yoOw==
X-Gm-Message-State: APjAAAVh6VE3g53eek0oqC1zHKemTH4mbzm5OC9HGTW07xzccm/88sQ1
 BYF+B7x1M9p48pFe4oXu/YqESw==
X-Google-Smtp-Source: APXvYqyOYFD97tfKGnmPwPmfp2w3pbVQzr1Mc0RjmsOaGaxOYR1oH4beASJJ2LsvEzXBpFE4wXV4hg==
X-Received: by 2002:a05:6214:1189:: with SMTP id
 t9mr20389607qvv.153.1580193418367; 
 Mon, 27 Jan 2020 22:36:58 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id z126sm11703882qka.34.2020.01.27.22.36.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 22:36:57 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Date: Tue, 28 Jan 2020 01:36:56 -0500
Message-Id: <F90DA0AA-4D27-4346-8D8D-D9A7871E2C07@lca.pw>
References: <115c187b-73ce-30b2-0694-999db1f2183b@c-s.fr>
In-Reply-To: <115c187b-73ce-30b2-0694-999db1f2183b@c-s.fr>
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_223659_816698_0957E8EA 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEphbiAyOCwgMjAyMCwgYXQgMToxNyBBTSwgQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0
b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+IAo+IEl0IGlzICdkZWZhdWx0IHknIHNvIHRoZXJl
IGlzIG5vIG11Y2ggcmlzayB0aGF0IGl0IGlzIGZvcmdvdHRlbiwgYXQgbGVhc3QgYWxsIHRlc3Qg
c3VpdGVzIHJ1biB3aXRoICdhbGx5ZXNfZGVmY29uZmlnJyB3aWxsIHRyaWdnZXIgdGhlIHRlc3Qs
IHNvIEkgdGhpbmsgaXQgaXMgcmVhbGx5IGEgZ29vZCBmZWF0dXJlLgoKVGhpcyB0aGluZyBkZXBl
bmRzIG9uIERFQlVHX1ZNIHdoaWNoIEkgZG9u4oCZdCBzZWUgaXQgaXMgc2VsZWN0ZWQgYnkgYW55
IGRlZmNvbmZpZy4gQW0gSSBtaXNzaW5nIGFueXRoaW5nPwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
