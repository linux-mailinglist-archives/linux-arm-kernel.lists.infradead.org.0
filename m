Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCB2B718E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 04:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZiBGODZlzvKqyXwlWbtj9CuWjzGJLr8SL948ngNKFfA=; b=nLJeZx0jFo1rOB
	VdefATAYfv669D/BZlU2tLdcjyKzXFJZPQdUBTgp4v+iLlAsGc3sA4/wulv8eHCrVF/rgeJ9mQFLQ
	EfoJabcw321WH0w5GWvR7f2xx3YQYtzIYPpsJXkQw5nA3wGy8Ffc6tVzs3rZbgjNV+iQN4ukJ5HIa
	FDjm72J+WNKEg6WzSpIx1xGIFBkWR9mAFBVRe79u+JiedrhSVmQUDzsJ6g7r7F3POfxxBN1Ku0t/V
	BvVgqCOcKRBwisuC5pA2CmsUaz2BX5zabSdG4QL9CZUl7VoElK+Ddzp46v1+JeK+y6xBEqghfakUn
	k8J4qsTsFvjFLTQWtxmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAm4X-0002Ct-9N; Thu, 19 Sep 2019 02:21:29 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAm4B-0002C4-Vy; Thu, 19 Sep 2019 02:21:09 +0000
Received: by mail-io1-xd44.google.com with SMTP id j4so3957565iog.11;
 Wed, 18 Sep 2019 19:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=28FR0iGdSsSntn0HXavBQASb15ncS9YhNIEPya+d/ZY=;
 b=QMhAwatWpTgV9Q79tPLRXDuYsGcn7T+ASU2X96tHXWftVa4ngLSP3VwpX7kdaEak5Y
 o0a+QXENkjEiRbXSYPCxyyqke/sSSWDHGKpQONvEvFS+7EGAjQbcybOqlenxKw9OZIpA
 zj70GUGkis+eScMnC4lXEsqefD3cvJ089cH9uIhos23Zfz8mDK8fA1gxOzuHRRASfbIm
 380J4A4iXCdKSNXlajDRMZYPdlVh+jeT8k+NWfP2ZMHwijhtXn6fFwAf6IymDDx9PiZU
 R2vM7p2e9lPGqbyg7rNLqGCdhZAGYIuansGpJwi1I6QriPhQATOKevAnZifIJWidGn5S
 vOpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=28FR0iGdSsSntn0HXavBQASb15ncS9YhNIEPya+d/ZY=;
 b=ueklFFw3QPXA7VnSsFRHc4qjd5sTxXhlNJ1t4YWcFwb0FlqG2XrlyK1HoDHU0rpEuN
 OLIfxfHHFaaUQMp6fk47GYccgfLzB/3ZTBCbeMBBu53XS0T6EST2OTowmPvdLAGi291M
 BBtTcTXpFYiW9xVvGRBXE8WFd/yKC8ttaYow0TBTk6a83asc5K91qEUag/WcYZa2lG+A
 8UH12TJdyH4J9idq3O1vKEhiMBBFdMyNmmk/BMAWhYFrynCkwGc5afsdEm5sfkExHvLR
 +AKvBzj0Fb+5pVj14rg6XtpBah4Q2DexK3fQtEdAXsWiyvcjCRvZdvtGXM6wWosLj0w4
 hssw==
X-Gm-Message-State: APjAAAWgIht7nqd9R+YaBYCPuC4QHshaAePoyfkZTc+NJOd380QUTm3X
 QYlZxSltRQsQeJPnUC5fbUji8aCXfIeLv0UKX+M=
X-Google-Smtp-Source: APXvYqzIjt/mvoTyN72tqDx3aUGKSUk8fTRKQjQr0hxKDeo1qLTcozizxASVMl1qI0/O8Y1KmhrvWRsYiQhLHkw6u+M=
X-Received: by 2002:a6b:6d07:: with SMTP id a7mr4459674iod.261.1568859664907; 
 Wed, 18 Sep 2019 19:21:04 -0700 (PDT)
MIME-Version: 1.0
References: <1568801744-21380-1-git-send-email-gene.chen.richtek@gmail.com>
 <20190918105121.GB5016@dell>
In-Reply-To: <20190918105121.GB5016@dell>
From: Gene Chen <gene.chen.richtek@gmail.com>
Date: Thu, 19 Sep 2019 10:20:53 +0800
Message-ID: <CAE+NS37XG+kfbj6yJrL5A-d2O_aiRU90yV5TUk3Kfa0Rv7dWmw@mail.gmail.com>
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_192108_064828_73D35D01 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gene.chen.richtek[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4g5pa8IDIwMTnlubQ55pyIMTjml6Ug6YCx
5LiJIOS4i+WNiDY6NTHlr6vpgZPvvJoKPgo+IE9uIFdlZCwgMTggU2VwIDIwMTksIEdlbmUgQ2hl
biB3cm90ZToKPgo+ID4gRnJvbTogR2VuZSBDaGVuIDxnZW5lX2NoZW5AcmljaHRlay5jb20+Cj4g
Pgo+ID4gQWRkIG1mZCBkcml2ZXIgZm9yIG10NjM2MCBwbWljIGNoaXAgaW5jbHVkZQo+ID4gQmF0
dGVyeSBDaGFyZ2VyL1VTQl9QRC9GbGFzaCBMRUQvUkdCIExFRC9MRE8vQnVjawo+ID4KPiA+IFNp
Z25lZC1vZmYtYnk6IEdlbmUgQ2hlbiA8Z2VuZV9jaGVuQHJpY2h0ZWsuY29tCj4gPiAtLS0KPgo+
IFRoaXMgbG9va3MgZGlmZmVyZW50IGZyb20gdGhlIG9uZSB5b3Ugc2VudCBiZWZvcmUsIGJ1dCBJ
IGRvbid0IHNlZSBhCj4gdmVyc2lvbiBidW1wIG9yIGFueSBjaGFuZ2Vsb2cgaW4gdGhpcyBzcGFj
ZS4gIFBsZWFzZSByZS1zdWJtaXQgd2l0aAo+IHRoZSBkaWZmZXJlbmNlcyBub3RlZC4KPgoKdGhl
IGNoYW5nZSBpcwoxLiBhZGQgbWlzc2luZyBpbmNsdWRlIGZpbGUKMi4gbW9kaWZ5IGNvbW1pdCBt
ZXNzYWdlCgp0aGlzIHBhdGNoIGlzIHJlZ2FyZGVkIGFzIHZlcnNpb24gMQoKPiA+ICBkcml2ZXJz
L21mZC9LY29uZmlnICAgICAgICAgICAgICAgIHwgIDEyICsKPiA+ICBkcml2ZXJzL21mZC9NYWtl
ZmlsZSAgICAgICAgICAgICAgIHwgICAxICsKPiA+ICBkcml2ZXJzL21mZC9tdDYzNjAtY29yZS5j
ICAgICAgICAgIHwgNDYzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+
ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAtcHJpdmF0ZS5oIHwgMjc5ICsrKysrKysrKysrKysr
KysrKysrKysKPiA+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaCAgICAgICAgIHwgIDMzICsr
Kwo+ID4gIDUgZmlsZXMgY2hhbmdlZCwgNzg4IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tZmQvbXQ2MzYwLWNvcmUuYwo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAtcHJpdmF0ZS5oCj4gPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5oCj4KPiAtLQo+IExlZSBKb25lcyBb5p2O55C8
5pavXQo+IExpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZAo+IExpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcwo+IEZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
