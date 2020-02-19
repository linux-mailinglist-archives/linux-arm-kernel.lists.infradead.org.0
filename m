Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F2B164D92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jFuOOTjIpFZzcYtDbQEopJeu6WIobqd0w7ibyF6paWc=; b=OmBXtsyJMrKib+aiuI2AWo+jp
	hp9pAEwbl1gR/E5537PO6QGs8xtQbUsxtt8d1OORVX0VJD0Guz/3Xd9vXRTc2lL0kmuJ3YA39Qs86
	lvMSREh1LKsQXxY/HZSpedyF461l+dFu6n5hgFODTE1udN/m/J3y1btOyezaCofTI3PyKNkYiAq9W
	np4nkomKe2ohj0lhn5svPnvHgeSB76l1+crcRHDKB+Y7dPevLnyk8GL1vTCc4KC9SehFxhIXovULf
	ro648ebBglaOz7yetJAyY3c4MXJQFSS2EjEKxfXd+HzGp5ToSgeFAP9+vylGkY0WxFDjnRc+9MrN7
	I07F4mecQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4U0H-0006mP-57; Wed, 19 Feb 2020 18:23:21 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4U09-0006ls-6F
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:23:14 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so1402898ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=A0DawmgTFOk5Mt/7IqD0y3krbs71MNO7CcDeqbzxFm8=;
 b=GaqnOCSTizR20UQOmQuOlyFxwqgWaRBW3GMqMLEuDrM6bpoSy0grtSEt4X5nz7L5a6
 Ft2AgACH/A+x4efhf60jM7ChmmY24ZCPmCCXnZylRIeUQ2GP3SUY+xIrVWY52V7Qu3Tp
 Xh0FmSTYQ7ND2F0fPqFjh7lbruvo5KmAGgS9eJ34Q4LU+82h5vuuPt7tUa43MDsvgVoq
 kfova+Mzh8AV98TtPx3CFnGCjRQCnstRUwoeyfTLX+4ZWe5LtnRdrymGAd3NfGY9G3Tj
 aMcK65gABupR8gAgBwwlcEQ1/CiB1F0T3eszAAoZepakDzQ9moMyW6T4Fnr0KzPNe6Rd
 TbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A0DawmgTFOk5Mt/7IqD0y3krbs71MNO7CcDeqbzxFm8=;
 b=sar4PRbwt4qcS8VaEVwYkev3yELYtN0srERngg54Ac3hERXoj5uFLzzWk8M/isNWkN
 Pgxh6hnVCX2xxkW5j6q+nGGSXcNZQ/av0bWh9HSj/E+p/KoMoYZ6kyz9nTWoQ8b3ZdM1
 tQHQEIOFnmPElBK5C0A0cK3HTivsZLb4PA6T1vaubD7PkhJXDs6KNQhkA26kr9sf68WW
 xWjSRJDhmdpMDCVgcAOOhOMVVHGr4wCjhX5QwTDu99YFHkxrX+nYD4cme7p4QxEdNM1b
 F3orVJS7jZW1omiiFLIswU4X3/hOPmvYZ+FFb2GLuKyGu1NPAKN5+9HGS/exORwHXPzu
 JXrQ==
X-Gm-Message-State: APjAAAXn7gdNIojI6KGyt5GwKYK0GorSd+3C4x9VrBj5HEDnpbfs5s61
 E8m8smhudaDNOrdw+eCoxLQ=
X-Google-Smtp-Source: APXvYqzQD8cYW2x08QgY7vSJARPguIoWGRl3Toe0iZU9Smf5PWnzwSEyQKMwWxswm+NjYKjmNIquFQ==
X-Received: by 2002:a2e:3619:: with SMTP id d25mr16201768lja.231.1582136590922; 
 Wed, 19 Feb 2020 10:23:10 -0800 (PST)
Received: from Vesas-MacBook-Pro.local (87-100-247-140.bb.dnainternet.fi.
 [87.100.247.140])
 by smtp.googlemail.com with ESMTPSA id e5sm201582lfn.66.2020.02.19.10.23.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 10:23:10 -0800 (PST)
Subject: Re: [PATCH] devicetree: zynqmp.dtsi: Add bootmode selection support
To: Mike Looijmans <mike.looijmans@topic.nl>, robh+dt@kernel.org,
 michal.simek@xilinx.com, mark.rutland@arm.com, devicetree@vger.kernel.org
References: <20200219122036.24575-1-mike.looijmans@topic.nl>
From: =?UTF-8?B?VmVzYSBKw6TDpHNrZWzDpGluZW4=?= <dachaac@gmail.com>
Message-ID: <07c68809-f65f-91ff-62eb-f12aa8960634@gmail.com>
Date: Wed, 19 Feb 2020 20:23:09 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219122036.24575-1-mike.looijmans@topic.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_102313_261830_AD3D5436 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dachaac[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: rajan.vaja@xilinx.com, nava.manne@xilinx.com, m.tretter@pengutronix.de,
 linux-kernel@vger.kernel.org, manish.narani@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlrZSwKCk9uIDE5LjIuMjAyMCAxNC4yMCwgTWlrZSBMb29pam1hbnMgd3JvdGU6Cj4gQWRk
IGJvb3Rtb2RlIG92ZXJyaWRlIHN1cHBvcnQgZm9yIFp5bnFNUCBkZXZpY2VzLiBBbGxvd3Mgb25l
IHRvIHNlbGVjdAo+IGEgYm9vdCBkZXZpY2UgYnkgcnVubmluZyAicmVib290IHFzcGkzMiIgZm9y
IGV4YW1wbGUuIEFjdGl2YXRlIGNvbmZpZwo+IGl0ZW0gQ09ORklHX1NZU0NPTl9SRUJPT1RfTU9E
RSB0byBtYWtlIHRoaXMgd29yay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIExvb2lqbWFucyA8
bWlrZS5sb29pam1hbnNAdG9waWMubmw+Cj4gLS0tCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3hp
bGlueC96eW5xbXAuZHRzaSB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxl
IGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy94aWxpbngvenlucW1wLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3hpbGlueC96
eW5xbXAuZHRzaQo+IGluZGV4IDI2ZDkyNmViMTQzMS4uNGMzOGQ3N2VjYmJhIDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMveGlsaW54L3p5bnFtcC5kdHNpCj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy94aWxpbngvenlucW1wLmR0c2kKPiBAQCAtMjQ2LDYgKzI0NiwzMCBAQAo+
ICAgCQkJfTsKPiAgIAkJfTsKPiAgIAo+ICsJCS8qIENsb2NrIGFuZCBSZXNldCBjb250cm9sIHJl
Z2lzdGVycyBmb3IgTFBEICovCj4gKwkJbHBkX2FwYjogYXBiQGZmNWUwMDAwIHsKPiArCQkJY29t
cGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4gKwkJCXJlZyA9IDwweDAgMHhmZjVl
MDAwMCAweDAgMHg0MDA+Owo+ICsJCQlyZWJvb3QtbW9kZSB7Cj4gKwkJCQljb21wYXRpYmxlID0g
InN5c2Nvbi1yZWJvb3QtbW9kZSI7Cj4gKwkJCQlvZmZzZXQgPSA8MHgyMDA+Owo+ICsJCQkJbWFz
ayA9IDwweGYxMDA+Owo+ICsJCQkJLyogQml0KDgpIGlzIHRoZSAiZm9yY2UgdXNlciIgYml0ICov
Cj4gKwkJCQltb2RlLW5vcm1hbCA9IDwweDAwMDA+Owo+ICsJCQkJbW9kZS1wc2p0YWcgPSA8MHgw
MTAwPjsKPiArCQkJCW1vZGUtcXNwaTI0ID0gPDB4MTEwMD47Cj4gKwkJCQltb2RlLXFzcGkzMiA9
IDwweDIxMDA+Owo+ICsJCQkJbW9kZS1zZDAgICAgPSA8MHgzMTAwPjsKPiArCQkJCW1vZGUtbmFu
ZCAgID0gPDB4NDEwMD47Cj4gKwkJCQltb2RlLXNkMSAgICA9IDwweDYxMDA+Owo+ICsJCQkJbW9k
ZS1lbW1jICAgPSA8MHg2MTAwPjsKPiArCQkJCW1vZGUtdXNiMCAgID0gPDB4NzEwMD47Cj4gKwkJ
CQltb2RlLXBqdGFnMCA9IDwweDgxMDA+Owo+ICsJCQkJbW9kZS1wanRhZzEgPSA8MHg5MTAwPjsK
PiArCQkJCW1vZGUtc2QxbHMgID0gPDB4ZTEwMD47CgpUaGlzIGtpbmRhIGxvb2tzIGEgYml0IG1p
c3VzZSBvZiByZWJvb3QgbW9kZSBzdXBwb3J0LgoKVXN1YWxseSB5b3UgYXJlIHNpZ25hbCB3aXRo
IHJlYm9vdC1tb2RlIHRoYXQgeW91IHdhbnQgdG8gZG8gZmFjdG9yeSAKcmVzZXQsIGVudGVyIHJl
Y292ZXJ5IG1vZGUgb3Igc3VjaCB0aGluZ3MuCgpOb3cgdGhpcyBzaWduYWxpbmcgaGVyZSBpcyB0
ZWxsaW5nIHRoYXQgdGhpcyBpcyB1c2VkIGZvciBzZWxlY3RpbmcgZnJvbSAKd2hhdCBkZXZpY2Ug
dG8gYm9vdCBmcm9tLgoKQW5vdGhlciBwcm9ibGVtIGlzIHRoYXQgdGhpcyBub3cgbW9kaWZpZXMg
YWxsIFhpbGlueCBaeW5xIE1QU29DcyB3aGljaCAKaXMga2luZGEgd3JvbmcuIFRoaXMgYmVoYXZp
b3Igc2hvdWxkIHJlYWxseSBiZSBwcm9kdWN0L2JvYXJkIHNwZWNpZmljIAphbmQgbm90IGNvbW1v
biBmb3IgYWxsIGJvYXJkcyAtLSB1bmRvaW5nIHRoaXMgaW4gcHJvZHVjdC9ib2FyZCBpcyAKc29t
ZXdoYXQgY3VtYmVyc29tZS4gTm93IHRoaXMgY2hhbmdlIGhpamFja3MgdGhlICJyZWJvb3QgPGFy
Zz4iIHdpdGggCnRoaXMgYmVoYXZpb3Igd2hpY2ggaXMgbm90IHNvIG5pY2UuCgpUaGFua3MsClZl
c2EgSsOkw6Rza2Vsw6RpbmVuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
