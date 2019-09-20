Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C989AB8E58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 12:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YPv4I9WGQ6T46b6KEMq4rkEP/Qi/eXs3gO0f+SqvljI=; b=BOlIH219cXy6vd
	aYu2HkcyEv6pUDLXyimx43TmJSWYn1YhQHcl2ld/+zSWCzITalpvCPWnC+pHrCuefhOhppRbOx4Ny
	OTs5wQvA1/hipyI3wVlWq6/Q7+0e3wiBDOYZl3/SUFEMG6nLDL9xumQh7x/mCyptd2creoAGaHr26
	+4ZA8+jxTiTIUFUslTYdGVwy03hs/er/MnyIVFDQgN4IanPRFPXw+4fdRRVMpqo0RCBo8fbq54T3A
	CVFXeF2F6IQdlzeAcuc9MKdqVdTnqp2KNlBqGMEgkXa5F+TLi2RwChkB4sN17/4tdtPogPCyZ6whR
	ZOGfb7a3FdlcOmBmY3NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFxG-0001gU-2L; Fri, 20 Sep 2019 10:15:58 +0000
Received: from mail.ehayq.am ([37.252.70.73])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFx7-0001fm-6n
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 10:15:52 +0000
Received: from [192.168.1.197] (LEDE.lan [192.168.1.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.ehayq.am (Postfix) with ESMTPSA id 9349440085
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 14:15:37 +0400 (+04)
To: linux-arm-kernel@lists.infradead.org
From: Sergey Brutyan <sergey_brutyan@ehayq.am>
Subject: ARM core blob list
Message-ID: <7c52fab5-825a-b019-ec46-6fb731336cfe@ehayq.am>
Date: Fri, 20 Sep 2019 14:15:37 +0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_031550_388224_2BDD936A 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBhbGwgd2UgYXJlIGNvbXBhbnkgb2YgaGFyZC9zb2Z0IGRlc2lnbiBhbmQgaW50ZWdyYXRp
b24gbW9zdGx5IGJhc2VkCm9uIEFSTSBjb3Jlcy4KV2UgYXJlIGN1cnJlbnRseSB3b3JraW5nIG9u
IExpYnJlIExpbnV4IGRldmVsb3BtZW50IGZvciBBUk0gYmFzZWQgU0JDLgoKQW5kIHJlYWR5IHRv
IHB1dCBwcm9mZXNzaW9uYWwgZWZmb3J0IGZvciBoYXZpbmcgY29tcGxldGUgYmxvYi1mcmVlIExp
bnV4Cmtlcm5lbCwgYXMgd2UgaGF2ZSBkb25lIHJlc2VhcmNoIHRoZXJlIGlzIG1vc3QgcHJvYmxl
bSB3aXRoIGJvb3Rsb2FkZXJzCmFuZCBNYWxpIG9yIFBvd2VyVlIgR1BVIHVuaXRzIGluIFNvQy4K
CldlIGFyZSBsb29raW5nIGZvcndhcmQgdG8gY29vcGVyYXRlIGFuZMKgIG5vdyBoYXZlIHNldmVy
YWwgbmVlZCBvZgppbmZvcm1hdGlvbi4KCkNhbiB5b3Ugc2VuZCB1cyBsaXN0IGZvciBibG9iIGRy
aXZlcnMgZm9yIHRoaXMgU29DOgoKwqDCoMKgIEFsbHdpbm5lciBBMjAKwqDCoMKgIEFsbHdpbm5l
ciBSNDAKwqDCoMKgIEJyb2FkY29tIEJDTTI4MzcKwqDCoMKgIFJlYWx0ZWsgUlREMTM5NQrCoMKg
wqAgTWVkaWFUZWsgTVQ3NjIzTgoKCkFuZCBhbHNvIHBsZWFzZSBvZmZlciB1cyB3aGljaCBpcyB0
aGUgYmVzdCBTb0MgZm9yIGJsb2ItZnJlZSBsaW51eApkZXZlbG9wbWVudC4KCkJlc3QgcmVnYXJk
cy4gU2VyZ2V5LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
