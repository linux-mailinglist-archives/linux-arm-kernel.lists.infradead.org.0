Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB10E120980
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGv2o/DgHK7KvMaP4OclD/b+6fmKS62heHwDBct7nww=; b=TsH1IssyK3Any8
	Aq8f6e2QWeJ0YzUltgtebvNOh63PhGHVoePyFkmY1X33nu1RNlffDp+LsXn7fvkPTJA8+C++MYKpi
	+zgsBGMpnhfr5sW9+R3b/gBsu2JUQW0p1hkilm0p4gWX2unV9QO36ARSBkntDDkI4yJWyFC77il4n
	JEPW3JhXuzGsNVsc39NTsotey3l4qMyNHSOEhVoK+AhomDTr/IX/ssHn6hoWaW/lsL0VZcIunusbK
	OX+nE0YThZsl3k/G36gTZrMIKaA9GG2SmaLhIl9xR7wJO0jm8Is6cfPhg76WqZ/zMMKSJDAQ/pzpG
	EwDlo+iO8H/+rz4Pxy2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsAm-0005W1-Ig; Mon, 16 Dec 2019 15:20:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsAZ-0005U5-U2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:20:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so7763280wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 07:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=yKFHERdNdPN6Ex8JOu2in3qBAjlasmuEZDq7sRDudK0=;
 b=GW+qXcq4BZ5dkIThObt2lOqawmLIk3OWXTb/8HhvjYhT072tqZEPE5CZw2zJVCuca6
 97PO7Bucb15eOo9VR5dF8osj4RSOlIeLX8dELi2xEhj+uiMZIrr8ldSDwNd26lrbapFG
 U1/x43PLG29ouKCNZ63dCgsxfaGOPqSYNesWjbPMg/tsXCHHgFF/MvK7b8gFdVfJK0T6
 qT3lq19j8new3QRUhZc03HP3qQq3iq4uRkcCSV+0ZY0/4+lYd+tXPuRysNY3gX2QKAG/
 WVORCiSTVnvWKKlgh3q6OmERq1GOtnmorsvYfRGuN6kVfxIsC+TiIb91EkGIxzLdXHTM
 aIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=yKFHERdNdPN6Ex8JOu2in3qBAjlasmuEZDq7sRDudK0=;
 b=Ngb+QXzl+2LNqE7RwOZJ6zT3GLZGNHrQ/jn/FyVYDRSpC0Fx1/BTTxUlivyZ6ATINA
 o7Ic+cLigUvLI/x53l4GTkG4lVvNBGwvJ/5fgoQ5YY24QnmlXw5rGpzyRBx7XPz5O3Y+
 Wvywn4274jSivKF/T7+cAhiAGeMdiEXiO4wiagTkEx7P04IxnX/p+n8rQ7LmF37Z+SBk
 xqIWSwtZ9re0hby3eUtNYV9/zDm4E9eqy9iXgj1G7sxRA/cfBP8Zcr0qZYjU/H3yK5M7
 mZysQP7xbS9dRUkR+B3d7KMFk94qiA+OzgbaquQv860ZCU91aWkHrb+4gaZd7naphrS0
 F8OA==
X-Gm-Message-State: APjAAAWbEekNwMc0juFGJEfYv+Wig7huPas8NZEb1csOml+QqWeHFbRq
 seUK5rI/9VbIZFlBdowfwwyl1A==
X-Google-Smtp-Source: APXvYqy1jbVR7FkN0kaR1W+4ZJ9ENvko5dMwnYV5wp0d91OQNJTU1+OxRy+dD9MAF1z6WCEDFVuptw==
X-Received: by 2002:a5d:6390:: with SMTP id p16mr31600584wru.170.1576509621307; 
 Mon, 16 Dec 2019 07:20:21 -0800 (PST)
Received: from dell ([185.17.149.202])
 by smtp.gmail.com with ESMTPSA id l2sm20713536wmi.5.2019.12.16.07.20.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 07:20:20 -0800 (PST)
Date: Mon, 16 Dec 2019 15:20:19 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v7 1/6] mfd: mt6397: modify suspend/resume behavior
Message-ID: <20191216152019.GE2369@dell>
References: <1576057435-3561-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1576057435-3561-2-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576057435-3561-2-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_072023_976431_8D922C24 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>,
 Ran Bi <ran.bi@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Tianping Fang <tianping.fang@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMSBEZWMgMjAxOSwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gU29tZSBwbWlj
cyBkb24ndCBuZWVkIGJhY2t1cCBpbnRlcnJ1cHQgc2V0dGluZ3MsIHNvIHdlIGNoYW5nZSB0byB1
c2UKPiBwbSBub3RpZmllciBmb3IgdGhlIHBtaWNzIHdoaWNoIGFyZSBuZWNlc3NhcnkgdG8gc3Rv
cmUgc2V0dGluZ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogSHNpbi1Ic2l1bmcgV2FuZyA8aHNpbi1o
c2l1bmcud2FuZ0BtZWRpYXRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5Ny1jb3Jl
LmMgICAgICAgfCAzMCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9t
ZmQvbXQ2Mzk3LWlycS5jICAgICAgICB8IDMzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvY29yZS5oIHwgIDIgKysKPiAgMyBmaWxl
cyBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCAzMCBkZWxldGlvbnMoLSkKCkZvciBteSBvd24g
cmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmlj
YWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
Rm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
