Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043A01315F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dt9Y8QThhNTLyT6e1mnV2P5OEw3IwD1cJzI9ggvojeI=; b=JqeGI4VojBPOU+
	diKhMijMKSepqtDXiZ7c4Vp3NXnc9vN/J+StIOjwlTlnn8RxAriOWPHdcz9I6bOGEzNaWsfzmORew
	AsyEQwPHpli9K+od9cxYJ7wvYF7jcXXSY1Z5y9uWSHXm7WwT8tYcr+VJBLYJFYJ/NMCgODoIxvzMu
	bWlh9fpw0ZJ11SmntA4Baq9oUikoLHyBMNjsG1z3MSdZaJrYLkrFw7vxlFglsHteT9Jw3JeSfPpbh
	go0g2WtJlu2pI3YB1rrtE6y0ISzf6Pmldsq16Ap68Gy1y0ODR1FJ8/uoEthTcynOs4Dl6lvmH68EQ
	BjTdt6ZCCInB6Wm/0sjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaKf-0007Pg-Qg; Fri, 03 May 2019 15:42:41 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaKZ-0007PE-K0
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:42:36 +0000
Received: by mail-lf1-x144.google.com with SMTP id k18so4707025lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 08:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hxoy1ZV5sToffY4PE/tTqurkXva76ASJNTG/Gm0iUtc=;
 b=uZfp/N3AZYMWXt5Qex8B7lqHo+QCVU0lHkKBJ7/OsujvSrSe/6pCz3Tx/Fi9EzN5MH
 4jcT8gkcTgrPnCoo0P9vfF+6iCLssr6QFtKBslx199cYK4OJTJbpS+BzwLFO3fNnGR9b
 VV2/ovqWA8W5ztSfjC8UYtL1loIfqqFXPq5PVQxDXjllaDkSGlGoRpcF2xCH40qpsyiy
 96McdV4eFzJOBsohHc8zfmOaseibnvi5v5D/B6K48C9GCV0/jkvl2LfwuhXtVXBBpdpe
 mKLwvvII1dMDaDBYVc/tupFgRk7th1DURgzTvLxVX4NxKO9XBDRzZt6m+n8HojOyywtw
 VHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hxoy1ZV5sToffY4PE/tTqurkXva76ASJNTG/Gm0iUtc=;
 b=MaM7n6c0Xip7klADSYxa/LHqZQoaoEY9Zu1tKIgISkE2HK4YdgmkRtOi2osU9u1lGx
 ACdnCgDQlRBeHuWZYu42pQgEdzgx0X00CRTMRRy0Lz6gybheQmq4xyVQKvh4iPJg6thO
 aJ7rswn83A0l9wqHJwT/BnhCry2jnUtJBvRfSZ8c0WlKV8N3hMomsvGfiQOPP5iIyBZP
 KeQZsZmvvC5vhr8MTRC/u/tGt+rciiuHx45LX1AAyAafDR4hEuIW91PGTMY9AJIwhA8T
 WlPc1I4p2mB76hKPqbcCaXmIUo9ObT/RQ3AhsWMBTHeRga78cav2dtnsxbDEWQAnJNup
 7VIQ==
X-Gm-Message-State: APjAAAUGPe3hIBt1lo3bIs+5LfD7fVidENoyxw9sXCZxYWBTQE6dxd50
 +ydY/5kfjuyjR+VhNEN+IVNg6w==
X-Google-Smtp-Source: APXvYqyU4uQeJLG/OtvlrhNPGDGwC02F9Y9cEMoD1VswE6z2M+2QplpwXLVYjy+XAotMFpGdXNqlcw==
X-Received: by 2002:a19:f60f:: with SMTP id x15mr5444261lfe.95.1556898152317; 
 Fri, 03 May 2019 08:42:32 -0700 (PDT)
Received: from localhost (c-573670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.87])
 by smtp.gmail.com with ESMTPSA id 63sm486077lfz.2.2019.05.03.08.42.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 08:42:31 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: a.zummo@towertech.it, alexandre.belloni@bootlin.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH] rtc: imxdi: remove unused variable
Date: Fri,  3 May 2019 17:42:17 +0200
Message-Id: <20190503154217.13205-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_084235_659966_8CAD6F41 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rtc@vger.kernel.org, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyB2YXJpYWJsZSBpcyBubyBsb25nZXIgdXNlZCBhbmQgdGhlIGNvbXBpbGVyIHJpZ2h0bHkg
Y29tcGxhaW5zIHRoYXQKaXQgc2hvdWxkIGJlIHJlbW92ZWQuCgouLi9kcml2ZXJzL3J0Yy9ydGMt
aW14ZGkuYzogSW4gZnVuY3Rpb24g4oCYZHJ5aWNlX3J0Y19zZXRfYWxhcm3igJk6Ci4uL2RyaXZl
cnMvcnRjL3J0Yy1pbXhkaS5jOjYzMzoxNjogd2FybmluZzogdW51c2VkIHZhcmlhYmxlIOKAmG5v
d+KAmSBbLVd1bnVzZWQtdmFyaWFibGVdCiAgdW5zaWduZWQgbG9uZyBub3c7CiAgICAgICAgICAg
ICAgICBefn4KClJld29yayB0byByZW1vdmUgdGhlIHVudXNlZCB2YXJpYWJsZS4KCkZpeGVzOiA2
MjlkNDg4YTNlYjYgKCJydGM6IGlteGRpOiByZW1vdmUgdW5uZWNlc3NhcnkgY2hlY2siKQpTaWdu
ZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+Ci0tLQog
ZHJpdmVycy9ydGMvcnRjLWlteGRpLmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ydGMvcnRjLWlteGRpLmMgYi9kcml2ZXJzL3J0Yy9y
dGMtaW14ZGkuYwppbmRleCA2MzQyYmM0MDM2NDUuLjNmM2Q2NTJhMGIwZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ydGMvcnRjLWlteGRpLmMKKysrIGIvZHJpdmVycy9ydGMvcnRjLWlteGRpLmMKQEAg
LTYzMCw3ICs2MzAsNiBAQCBzdGF0aWMgaW50IGRyeWljZV9ydGNfcmVhZF9hbGFybShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHN0cnVjdCBydGNfd2thbHJtICphbGFybSkKIHN0YXRpYyBpbnQgZHJ5aWNl
X3J0Y19zZXRfYWxhcm0oc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgcnRjX3drYWxybSAqYWxh
cm0pCiB7CiAJc3RydWN0IGlteGRpX2RldiAqaW14ZGkgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsK
LQl1bnNpZ25lZCBsb25nIG5vdzsKIAlpbnQgcmM7CiAKIAkvKiB3cml0ZSB0aGUgbmV3IGFsYXJt
IHRpbWUgKi8KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
