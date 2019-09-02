Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F019A5210
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AEIwX6us3LDY87PxmmV00EyoTLdRdJVVCVmWVohKEgU=; b=SOCF2TU5jY2B0M
	c1WLHkwKyXkPOLt5ThJBYEYR/C9fHOMngLq0Hv56ZKBnQqd+d91R5m18+fB0ciHENYVWom0K8Pmu7
	SKn1epscNGontAHnY2jcpj+5Tw0kPPXWj6jiZSysZ/nFCbsUdQXkWxTqoGBL/7a7zCRv1J3NDTR2U
	qmg+ZGUjuvYrW44vrct8tgykKWvoCJMGxa+ONvZYtZuUxkOi1WxwppsLrZd5f/fNCKC9/qHAGHliy
	SwCiyLtVRRAfZH9aZAhKEIPFe2XS9DB+dOqKWY3PdygeS+RwpyU3UL0ulW8bzhNfeVVTT1OaM/fkc
	53EDPWqZ0GSsbtaZUS8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hwl-0006GH-7I; Mon, 02 Sep 2019 08:44:23 +0000
Received: from mail.myocards24.eu ([80.211.31.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hwY-0006Fq-Oa
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:44:12 +0000
Received: by mail.myocards24.eu (Postfix, from userid 1001)
 id 0D3C78751D; Mon,  2 Sep 2019 10:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=myocards24.eu;
 s=mail; t=1567413238;
 bh=xBN5KrwGBIuRv5p99N2Jwj7SQJMv5k+gy8ovi3P478A=;
 h=Date:From:To:Subject:From;
 b=NotzECUERzyscXz/rGpSNs6OZ8j93XqcW+zFA99Qcc/RbswXBfowyaCy6sO7gmJgT
 wHHLstHJjdT8SenQgarPq1PK7v6OgjoVACWKf5HljWPiEqOAW9N/iSitHLBYGPDoiV
 Ei9y6X3AYSNZSf6rkGcMLiXk8Mro5iegllSkQlok=
Received: by mail.myocards24.eu for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Sep 2019 08:33:49 GMT
Message-ID: <20190902093341-0.1.6.1zt.0.z6vcar5jab@myocards24.eu>
Date: Mon,  2 Sep 2019 08:33:49 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@myocards24.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.myocards24.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_014410_965357_8A594ECD 
X-CRM114-Status: UNSURE (   2.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.4 MIXED_ES               Too many es are not es
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

w5xkdsO2emzDtm0sCgpBIGPDqWfDqXQgYSBrb25rdXJlbmNpw6F0w7NsIG1lZ2vDvGzDtm5iw7Z6
dGV0xZEgb2x5YW4ga8O8bMO2bmxlZ2VzIGVzemvDtnrDtmsga2VyZXPDqXNlIHNvcsOhbiwgYW1l
bHllayBhIG11bmthdsOhbGxhbMOzayDDqXMgYSBtdW5rw6FsdGF0w7Mgc3rDoW3DoXJhIGVneWFy
w6FudCBlbMWRbnnDtnNlaywgw6lyZGVtZXMgbWVnZm9udG9sbmkgYSBqdXR0YXTDoXNrw6ludCBh
ZGhhdMOzIGvDoXJ0ecOhayBhbGthbG1hesOhc8OhdC4KCkEga8OhcnR5w6FuIHN6ZXJlcGzFkSDD
tnNzemVnZXQgYXogw5ZuIGFsa2FsbWF6b3R0YWkgdGV0c3rFkWxlZ2VzIGPDqWxyYSBoYXN6bsOh
bGhhdGrDoWsgZmVsLCDDqXMgw6lydMOpa2VsbmkgZm9nasOhayBtdW5rw6FsdGF0w7NqdWsgZWxr
w7Z0ZWxlemV0dHPDqWfDqXQuIAoKRml6ZXTDqXNlbWVsw6lzIGhlbHlldHQgaXMga2l2w6Fsw7Mg
YWx0ZXJuYXTDrXZhLCBoaXN6ZW4gYWxhY3NvbnlhYmIga8O2bHRzw6lnZWtrZWwgasOhciwgw6lz
IGEgbXVua8OhbHRhdMOzIHN6YWLDoWx5b3poYXRqYSBhIGvDoXJ0ecOhcmEgdMO2bHRlbmTFkSDD
tnNzemVnZXQgcGwuIGEgbXVua2F2w6FsbGFsw7MgZXJlZG3DqW55ZWksIHN6b2xnw6FsYXRpIGlk
ZWplLCByw6lzenbDqXRlbGUgc3RiLiBhbGFwasOhbi4gQSBrw6FydHlhIGLDoXJtaWtvciBsZW1v
bmRoYXTDsy4gCgpNaWtvciBhbGthbG1hcyDDlm5uZWssIGhvZ3kgYmVzesOpbGrDvG5rIGEga8Oh
cnR5w6FrIGFsa2FsbWF6w6FzaSBsZWhldMWRc8OpZ2VpcsWRbCBheiDDlm7DtmsgY8OpZ8OpbsOp
bD8KCgpLYXBvbGNzIE3DoXR5w6FzCkh1bmdhcnkgVGVhbSBMZWFkZXIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
