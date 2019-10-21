Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB0CDEB20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2sxnunLHWkwBj4UkLZEGADD7KgqyuZn5wADv0NJ/JI=; b=P2Dcakz5KXOAzF
	F6BWyWy9dpfjGsvP84RYR9AdPmpyPcl+l61prLB4jgnf76RV3StK9NrJHeikg48Azlj1MuYMMTx4o
	7IXI3WpNQJwbxU0uzvZhDFSWZNj/3zEYeoVzO2ErqqpI8xX7dUgB51Gcqbu7SPGAUxHkKbHNg8cvX
	GrhBhSH+5qboK++nujm3F9WWJtGD22KpThaEO7SIRqgN36aNdBChKyrIHwfx0r0GZ1jvqzpRs8Xm2
	jkWS2M38r5mwR6E932AlXX70RkRo3v7Z/8ks9H9pYCTQI6Yvt6EYVDODNF+54zyJJdkbAnMdnl9J0
	HoESte6VBQsRnsURlLrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMW2o-0005Xp-Kc; Mon, 21 Oct 2019 11:40:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMW2b-0005CY-5x
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:40:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id s1so4811291wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=tUXlJyf/EwF52UBQUMrINYmFP1uDjIe8LBm7MrH/x50=;
 b=xIoHYOEMyhGDXoCpQ9jHFyb0ii1+Dwvu1Q9SEfKtsUww4GbJQQy6Z+jQ8cl+fpelw3
 ThXt8MFnHE4WeoE8+UnlJTQA1ZYeRuSyGiCfFTKaC0OBBqbot6eli99dXr5TzBuwDLdg
 hv/656/7etodYAz4ZGpUNsv4u+8lHsnz3JDcP+0QvO0l0qDRgeRmohlWKezDuIXl11Ai
 bYLHo0gILQbudud59jMRUdxxPNbWw0pXm0FHqeuVlxs2z/vrj8cchV+e99cxB6Xbntp6
 Qh4S59PcwuPmISifpJ/a8LUwevqg/nE1p3vXY/gT+dfP349mVoc7XFJ3DhM7T9EHY4cW
 un/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=tUXlJyf/EwF52UBQUMrINYmFP1uDjIe8LBm7MrH/x50=;
 b=fmIQFaFUlL5GYFOPvPhKJBxfSEDt0ESKXs1L47DDLvaLdTU47fJ5ffy36o+km8gTPH
 XK9g2vBTznxqsKXXSyzymIIanPhKvDm0AJ7qMBgik7ZFQmBoxafl6a7RD5KnD7A2koSD
 5vSwxesahMkbhnstBlIVuIF4bKJQPC+r6HOkDxpCIvqkq7O0cX6lOVbZvUsz1VHPQN2S
 txFTPLWTiswwzdPuHqFbHE2NMA8b4BLaj1yzUHDA8LXXwNwOFSyUo3KQlql+xkH7eW7b
 f2/iUugPO/ADbGppGuz9Ja0NTkFNpmphb59zRec8hhZdUJ6wnTbeZwN7Gtdj0ujdicGS
 Ctwg==
X-Gm-Message-State: APjAAAWHjq0DFgtKj7u6BSyb2WFE8HZY4DNradKsdtmyW9tI2MGJ3Uqr
 0NeAxU2F+mlOZxaqWbtlaIsQog==
X-Google-Smtp-Source: APXvYqxexJrH8EZOViFVhYDgj4YbzWFLCGz4GvVoQtRfylB+aLylAjaNDXZyGLJlTyeyaGzLKfhkRQ==
X-Received: by 2002:a5d:5222:: with SMTP id i2mr14222242wra.271.1571657999840; 
 Mon, 21 Oct 2019 04:39:59 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id p20sm9851205wmc.23.2019.10.21.04.39.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 04:39:59 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:39:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 0/9] Simplify MFD Core
Message-ID: <20191021113957.GC4365@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_044001_234637_02CAE814 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Barry Song <baohua@kernel.org>, James Cameron <quozl@laptop.org>,
 stephan@gerhold.net, Linus Walleij <linus.walleij@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Mark Brown <broonie@kernel.org>,
 Daniel Drake <drake@endlessm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgQXJuZCBCZXJnbWFubiB3cm90ZToKCj4gT24gTW9uLCBPY3Qg
MjEsIDIwMTkgYXQgMTI6NTggUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3Jv
dGU6Cj4gPgo+ID4gTUZEIGN1cnJlbnRseSBoYXMgb25lIG92ZXItY29tcGxpY2F0ZWQgdXNlci4g
IENTNTUzNSB1c2VzIGEgbWl4dHVyZSBvZgo+ID4gY2VsbCBjbG9uaW5nLCByZWZlcmVuY2UgY291
bnRpbmcgYW5kIHN1YnN5c3RlbS1sZXZlbCBjYWxsLWJhY2tzIHRvCj4gPiBhY2hpZXZlIGl0cyBn
b2FsIG9mIHJlcXVlc3RpbmcgYW4gSU8gbWVtb3J5IHJlZ2lvbiBvbmx5IG9uY2UgYWNyb3NzIDMK
PiA+IGNvbnN1bWVycy4gIFRoZSBzYW1lIGNhbiBiZSBhY2hpZXZlZCBieSBoYW5kbGluZyB0aGUg
cmVnaW9uIGNlbnRyYWxseQo+ID4gZHVyaW5nIHRoZSBwYXJlbnQgZGV2aWNlJ3MgLnByb2JlKCkg
c2VxdWVuY2UuICBSZWxlYXNpbmcgY2FuIGJlIGhhbmRlZAo+ID4gaW4gYSBzaW1pbGFyIHdheSBk
dXJpbmcgLnJlbW92ZSgpLgo+ID4KPiA+IFdoaWxlIHdlJ3JlIGhlcmUsIHRha2UgdGhlIG9wcG9y
dHVuaXR5IHRvIHByb3ZpZGUgc29tZSBjbGVhbi11cHMgYW5kCj4gPiBlcnJvciBjaGVja2luZyB0
byBpc3N1ZXMgbm90aWNlZCBhbG9uZyB0aGUgd2F5Lgo+ID4KPiA+IFRoaXMgYWxzbyBwYXZlcyB0
aGUgd2F5IGZvciBjbGVhbiBjZWxsIGRpc2FibGluZyB2aWEgRGV2aWNlIFRyZWUgYmVpbmcKPiA+
IGRpc2N1c3NlZCBhdCBbMF0KPiA+Cj4gPiBbMF0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkv
MTAvMTgvNjEyLgo+IAo+IEFzIHRoZSBDUzU1MzUgaXMgcHJpbWFyaWx5IHVzZWQgb24gdGhlIE9M
UEMgWE8xLCBpdCB3b3VsZCBiZQo+IGdvb2QgdG8gaGF2ZSBzb21lb25lIHRlc3QgdGhlIHNlcmll
cyBvbiBzdWNoIGEgbWFjaGluZS4KPiAKPiBJJ3ZlIGFkZGVkIGEgZmV3IHBlb3BsZSB0byBDYyB0
aGF0IG1heSBiZSBhYmxlIHRvIGhlbHAgdGVzdCBpdCwgb3IKPiBrbm93IHNvbWVvbmUgd2hvIGNh
bi4KCldvbmRlcmZ1bC4gIFRoYW5rIHlvdS4KCj4gRm9yIHRoZSBhY3R1YWwgcGF0Y2hlcywgc2Vl
Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5MTAyMTEwNTgyMi4yMDI3MS0xLWxl
ZS5qb25lc0BsaW5hcm8ub3JnL1QvI3QKPiAKPiAgICAgQXJuZAoKLS0gCkxlZSBKb25lcyBb5p2O
55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
