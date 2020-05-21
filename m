Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1792F1DD8A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 22:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLM/7HUkUCYVI05PdH+dqVEYZuDIIbqEa6aw6Qw1eT8=; b=JGprTuyANw9Bdd
	32u0oM/aTT7rA4quftVpRKoFvTA+Rl4J65SXxFN55WkO5tPaPcMnVsK+yP6cP45avPM5COj76BxSk
	cPTnNNH+XJyonCT1+4DdFRsqpFw20qzQIxEzEqlFVC0KR/idxy8NXdgifxWB/T+6PlphtYdLlidPW
	Jt1gj9y2H39XUCGmO6v2G2eP8UK/uuQy8/zPt5gufUb8uQZwvrE3q9pUTTyw/RSGRvld8t8mClffw
	tf2SZttuH5Kc/sqzurfB0NZBK6LHY6Bk4jrdEWPUkOsXm2voyO0kxesTsBRxT7yOxODWO8zVlE8rg
	Sowcryquy6JWKRavBzMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbs4x-0001TB-CQ; Thu, 21 May 2020 20:46:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbs4n-0001So-Rb
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 20:46:03 +0000
Received: by mail-lj1-x244.google.com with SMTP id m12so7591819ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 13:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uTez8kuMY3TP5XsYIYA67o+sB7pgMVGNezpgMi033kI=;
 b=H+JXV4Ixd6t9+mkrG0yCupqx+KR1gWYSFhjUFNvuKf/wkH+6khAb6xrNdNuhnj5QXk
 X9Zm/XBFtHdUmbOmELCzPYWUI20raJQz8yo3cgVLs+6gTwPtuh8rC1gYYGkCbnqSNjvq
 FKGXIEO5+WlXbr7mDxvQKahVXYOykev04GbpMcOK1//pegIotbHdVOPnPDPIJ+Q43i6K
 3+NZEH8E0T8oCXk2yB8v8jPjAMrOmL2FB26EvDJqRacwpz+Z7L0QhWMjWRU49U1stx1e
 bMHNCva0IhTKMKVUOvjV7rocF8mJaazH7yMc0h8TI32bZRcJb4uVXDKLZ1SioqjCAY/x
 pe+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uTez8kuMY3TP5XsYIYA67o+sB7pgMVGNezpgMi033kI=;
 b=A0MICFpv6W/OVUdgbDPxfrg2DdgZDE/e7iTyL3T1Cwl8y6mDC0poamcA4geNCYmqUR
 z9DN2f+iBxN/3imjpiKrIvAC/jkxWJBWDUJ7qqgTtqHZXdPAP0m3hSwH+Ef4io5jPjcZ
 sCJSBok35k/G3SRHl65zpNEk84XoAeOKC9ZKWnTdPNdBKp+gPtwQUFBvVrY2AT3WbugS
 B3vP72L3TWkDqjz1Ob7YRR9sKNG7SHnrPD3Q6hbycPriopNh0b0YKltK0iGoplGmCYxW
 KbjhIaPR5AfU2td25dg0usGKgVHwrt+pBNIAgzPpc5F9I2M3lzQgKU82BeDvIuP+nP+m
 2Beg==
X-Gm-Message-State: AOAM530svAeAyKoNPHlc3zN9Tt1yGxCZJFw+IiM2su4POaAvShkhlyh2
 xloOvuGLqjD5VaN+BvyT/MTfJBBwSthiHH51Sn8=
X-Google-Smtp-Source: ABdhPJxzQSWFIUeHpddcteib1fh2PMeMjFE+FkunevVip9n2ACN30aLCRo7QK85YpmYxoO6chpiGZFOVh0YMQSAjPsg=
X-Received: by 2002:a05:651c:87:: with SMTP id 7mr5990758ljq.2.1590093958157; 
 Thu, 21 May 2020 13:45:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-3-tali.perry1@gmail.com>
 <20200521142340.GM1634618@smile.fi.intel.com> <20200521143100.GA16812@ninjato>
 <CAHb3i=vcVLWHjdiJoNZQrwJCqzszpOL7e9SAjqObsZCRH4ifwg@mail.gmail.com>
 <20200521145347.GO1634618@smile.fi.intel.com> <20200521203758.GA20150@ninjato>
In-Reply-To: <20200521203758.GA20150@ninjato>
From: Tali Perry <tali.perry1@gmail.com>
Date: Thu, 21 May 2020 23:47:18 +0300
Message-ID: <CAHb3i=tF2YF3LbbWRK9buObU-LjWGhxKCwvj2Jtn=VH1p+zDJg@mail.gmail.com>
Subject: Re: [PATCH v12 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_134601_911717_0C09576E 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tali.perry1[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tali.perry1[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Tomer Maimon <tmaimon77@gmail.com>,
 Nancy Yuen <yuenn@google.com>, avifishman70@gmail.com,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>, Ofer Yehielli <ofery@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kfting@nuvoton.com,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjEsIDIwMjAgYXQgMTE6MzcgUE0gV29sZnJhbSBTYW5nIDx3c2FAdGhlLWRy
ZWFtcy5kZT4gd3JvdGU6Cj4KPgo+ID4gPiA+IEkgd29uZGVyZWQgYWxzbyBhYm91dCBERUJVR19G
UyBlbnRyaWVzLiBJIGNhbiBzZWUgdGhlaXIgdmFsdWUgd2hlbgo+ID4gPiA+IGRldmVsb3Bpbmcg
dGhlIGRyaXZlci4gQnV0IHNpbmNlIHRoaXMgaXMgZG9uZSBub3csIGRvIHRoZXkgcmVhbGx5IGhl
bHAgYQo+ID4gPiA+IHVzZXIgdG8gZGVidWcgYSBkaWZmaWN1bHQgY2FzZT8gSSBhbSBub3Qgc3Vy
ZSwgYW5kIHRoZW4gSSB3b25kZXIgaWYgd2UKPiA+ID4gPiBzaG91bGQgaGF2ZSB0aGF0IGNvZGUg
aW4gdXBzdHJlYW0uIEkgYW0gb3BlbiBmb3IgZGlzY3Vzc2lvbiwgdGhvdWdoLgo+ID4gPgo+ID4g
PiBUaGUgdXNlciB3YW50ZWQgdG8gaGF2ZSBoZWFsdGggbW9uaXRvciBpbXBsZW1lbnRlZCBvbiB0
b3Agb2YgdGhlIGRyaXZlci4KPiA+ID4gVGhlIHVzZXIgaGFzIDE2IGNoYW5uZWxzIGNvbm5lY3Rl
ZCB0aGUgbXVsdGlwbGUgZGV2aWNlcy4gQWxsIGFyZSBvcGVyYXRlZAo+ID4gPiB1c2luZyB2YXJp
b3VzIGRhZW1vbnMgaW4gdGhlIHN5c3RlbS4gU29tZXRpbWVzIHRoZSBzbGF2ZSBkZXZpY2VzIGFy
ZSBwb3dlciBkb3duLgo+ID4gPiBUaGVyZWZvciB0aGUgdXNlciB3YW50ZWQgdG8gdHJhY2sgdGhl
IGhlYWx0aCBzdGF0dXMgb2YgdGhlIGRldmljZXMuCj4gPgo+ID4gQWgsIHRoZW4gdGhlcmUgYXJl
IHRoZXNlIG9wdGlvbnMgSSBoYXZlIGluIG1pbmQgKFdvbGZyYW0sIEZZSSBhcyB3ZWxsISk6Cj4g
PiAxKSBwdXNoIHdpdGggZGVidWdmcyBhcyBhIHRlbXBvcmFyeSBzb2x1dGlvbiBhbmQgY29udmVy
dCB0byBkZXZsaW5rIGhlYWx0aCBwcm90b2NvbCBbMV07Cj4gPiAyKSBkcm9wIGl0IGFuZCBkZXZl
bG9wIGRldmxpbmtfaGVhbHRoIHNvbHV0aW9uOwo+ID4gMykgcHVzaCBkZWJ1Z2ZzIGFuZCB3YWl0
IGlmIEnCskMgd2lsbCBnYWluIGRldmxpbmsgaGVhbHRoIHN1cHBvcnQKPgo+IE5vIG5lZWQgZm9y
IDIpLiBXZSBjYW4gcHVzaCBpdCBub3cgYW5kIGNvbnZlcnQgaXQgbGF0ZXIuIFRoYXQgYmVpbmcK
PiBzYWlkLCBJIHdvbmRlciBpZiBbMV0gaXMgc3VpdGFibGUgZm9yIHRoaXMgZHJpdmVyPyBUaGlu
Z3MgbGlrZSBOQUNLcyBhbmQKPiB0aW1lb3V0cyBoYXBwZW4gcmVndWxhcmx5IG9uIGFuIEkyQyBi
dXMgYW5kIGFyZSBub3QgYSBzdGF0ZSBvZiBiYWQKPiBoZWFsdGguCj4KCkFncmVlLCBoYXZpbmcg
YSB0aW1lb3V0IGV2ZXJ5IG5vdyBhbmQgdGhlbiBpcyBub3QgYW4gaXNzdWUuIFRoZSB1c2VyCmlz
IGludGVyZXN0ZWQKaW4gY2FzZXMgd2hlbiB0aGUgbnVtYmVyIG9mIHRpbWVvdXRzXEJFUlxuYWNr
XHJlY292ZXJ5IGFyZSBoaWdoLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
