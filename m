Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1311BE189
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwAfWqGAq8CaqDLhkcnFGfyrL8ReBCZobqVqnDfzgnM=; b=kAk+/9Ks4pgiPX
	XBv3OtbfEVRwM+9rypGzBWOLK8NAE6CBU6jIs9UvGb+7ey3Vgzt+k44QXfVv9Eq490ovAX+TV1+AN
	Gd/z18OGZd6CsCx87YhCFAYn7A/x6u3R1+g7yzKA8rdUHqhbtWYya8OwI32NoHxnSsBaiZzHnovM0
	9bcEkt/2+fcZHX24J8omtNq52mwa4LtJ6nGjCVD0CSf6YZ1ViPreBGPr2uYp/kkFNsuclZw1SnJCw
	OeNKMO+TXl+F12JrlsYaFlc6aYSbBF9WsUMRgqvVsRTdkKZSXrAWL+wlJb5L7r1keii4QYTsvz+JR
	/iH5ggx9LT5olTrdcy1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTo0K-00029x-2h; Wed, 29 Apr 2020 14:48:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTo04-00027t-7Z; Wed, 29 Apr 2020 14:47:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CA2F1045;
 Wed, 29 Apr 2020 07:47:46 -0700 (PDT)
Received: from bogus (unknown [10.37.12.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E7CD3F68F;
 Wed, 29 Apr 2020 07:47:44 -0700 (PDT)
Date: Wed, 29 Apr 2020 15:47:41 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] mtd: cfi_cmdset_0001: Support the absence of protection
 registers
Message-ID: <20200429144741.GB16356@bogus>
References: <20200417142325.2931423-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417142325.2931423-1-jean-philippe@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_074748_342873_55F2082E 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTcsIDIwMjAgYXQgMDQ6MjM6MjZQTSArMDIwMCwgSmVhbi1QaGlsaXBwZSBC
cnVja2VyIHdyb3RlOgo+IFRoZSBmbGFzaCBjb250cm9sbGVyIGltcGxlbWVudGVkIGJ5IHRoZSBB
cm0gQmFzZSBwbGF0Zm9ybSBiZWhhdmVzIGxpa2UKPiB0aGUgSW50ZWwgU3RyYXRhRmxhc2ggSjMg
ZGV2aWNlLCBidXQgb21pdHMgc2V2ZXJhbCBmZWF0dXJlcy4gSW4KPiBwYXJ0aWN1bGFyIGl0IGRv
ZXNuJ3QgaW1wbGVtZW50IGEgcHJvdGVjdGlvbiByZWdpc3Rlciwgc28gIk51bWJlciBvZgo+IFBy
b3RlY3Rpb24gcmVnaXN0ZXIgZmllbGRzIiBpbiB0aGUgUHJpbWFyeSBWZW5kb3ItU3BlY2lmaWMg
RXh0ZW5kZWQKPiBRdWVyeSwgaXMgMC4KPiAKPiBUaGUgSW50ZWwgU3RyYXRhRmxhc2ggSjMgZGF0
YXNoZWV0IG9ubHkgbGlzdHMgMSBhcyBhIHZhbGlkIHZhbHVlIGZvcgo+IE51bVByb3RlY3Rpb25G
aWVsZHMuIEl0IGRlc2NyaWJlcyB0aGUgZmllbGQgYXM6Cj4gCj4gCSJOdW1iZXIgb2YgUHJvdGVj
dGlvbiByZWdpc3RlciBmaWVsZHMgaW4gSkVERUMgSUQgc3BhY2UuCj4gCeKAnDAwaCzigJ0gaW5k
aWNhdGVzIHRoYXQgMjU2IHByb3RlY3Rpb24gYnl0ZXMgYXJlIGF2YWlsYWJsZSIKPiAKPiBXaGls
ZSBhIHZhbHVlIG9mIDAgbWF5IGFyZ3VhYmx5IG5vdCBiZSBhcmNoaXRlY3R1cmFsbHkgdmFsaWQs
IHRoZQo+IGRyaXZlcidzIGN1cnJlbnQgYmVoYXZpb3IgaXMgY2VydGFpbmx5IHdyb25nOiBpZiBO
dW1Qcm90ZWN0aW9uRmllbGRzIGlzCj4gMCwgcmVhZF9wcmlfaW50ZWxleHQoKSBhZGRzIGEgbmVn
YXRpdmUgdmFsdWUgdG8gdGhlIHVuc2lnbmVkIGV4dHJhX3NpemUsCj4gYW5kIGVuZHMgdXAgaW4g
YW4gaW5maW5pdGUgbG9vcC4KPiAKPiBGaXggaXQgYnkgaWdub3JpbmcgYSBOdW1Qcm90ZWN0aW9u
RmllbGRzIG9mIDAuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVhbi1QaGlsaXBwZSBCcnVja2VyIDxq
ZWFuLXBoaWxpcHBlQGxpbmFyby5vcmc+Cj4gLS0tCj4gSSBndWVzcyB0aGlzIGZsYXNoIGRldmlj
ZSBoYXMgbmV2ZXIgYmVlbiB0ZXN0ZWQgb24gTGludXguIFRoZSBidWcgc2hvd2VkCj4gdXAgd2hl
biB0cnlpbmcgdG8gYm9vdCB0aGUgbGF0ZXN0IGFybTY0IGRlZmNvbmZpZywgd2hpY2ggZW5hYmxl
ZAo+IENPTkZJR19NVERfUEhZU01BUF9PRiwgb24gdGhlIFJldkMgRmFzdE1vZGVsLiBXaXRob3V0
IHRoaXMgY29uZmlnIG9wdGlvbgo+IHRoZSBkZXZpY2UgaXNuJ3QgcHJvYmVkLgoKQW55IHByb2dy
ZXNzIHdpdGggdGhpcyBwYXRjaCA/CgpGV0lXLCB0aGlzIGZpeGVzIGJvb3Qgb24gZmV3IGFybTY0
IEFybSBMdGQgRmFzdE1vZGVscyB3ZSB1c2UgZm9yCmRldmVsb3BtZW50IGluY2x1ZGluZyB0aGUg
YWJvdmUgbWVudGlvbmVkIFJldkMgRmFzdE1vZGVsLiBTbywKClRlc3RlZC1ieTogIFN1ZGVlcCBI
b2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+CgotLSAKUmVnYXJkcywKU3VkZWVwCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
