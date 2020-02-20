Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8E1654B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 02:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/6KOlsjQyE4pXWYcD3MyUzBRFNMoiKnMZWWOt1IouwQ=; b=s3e8mbGPbceFkP
	Ln85qhD3tkiMpqT6on2NghDT447MPKnmEvDRb3CdCPVDDPV8dbnOBDgdS05TAAvAHqqii+2qf2k5P
	3cFBkc+91Nbn+aVghV9EVU5l+vxedzVtrV/Kl48LrWsabqu1db+Y31ZKAndtFhEERsm+Lpzmt6pvj
	yw0qwkGIHuABuYetzl5wij8gaxMDTRyTx6Z2eAMNj8jxulPDKqoMLos3hTVKEBo87XF6yQIJF9Pwd
	jhhnZUrlVtRW88nDvaN0KPO/hFUJsW454z7t55f6gARqPAdcH0EVxPPBiGz09QB06ONb7RAU0iCQf
	nfHLC3ChCz8nZB8Lv9cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4awm-00031A-Kn; Thu, 20 Feb 2020 01:48:12 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4awb-00030n-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 01:48:03 +0000
Received: by mail-pg1-x531.google.com with SMTP id 70so1072945pgf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 17:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=GRmZcUkByWmg0PcBuDo2YqyvGa4uxqnw0FRkwc+yZ0o=;
 b=zM2neZG8DeN1auulqem68sr2ikK4YXUqrJLi4WHriRI69GtKHTzpmFyworeor6YQam
 GNzgEfwjP3+xeNsevrOaz7oNNaCtdFvv1U5NikxQxcxbktPK1NNgcXMN8i4EQSF/grBZ
 Qr2LWPUtsC/rkR4wTBd6cJICAaSlz8REWs4mVTZuaFIHhn4v2UQ1Uronl0LpOnslvUxB
 5oZIjZ1iE3JqmxJpKy1Xd5UiS9U8TAhOxCf0xALulJzYuLbS1pXiJAXCqVfMuAP/MC6w
 +8efd7jQbZhy00rxSleb1aqSPZy4dVYt6MsOnfRhxRR1XEy2GxpCV9Iv6uYK+1LFG430
 zTHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=GRmZcUkByWmg0PcBuDo2YqyvGa4uxqnw0FRkwc+yZ0o=;
 b=VVh9rc6x+5hfiTxB/yH15yFhC+MPDBJsY3MX84l0idOz3TXr+rtYrx29Oe+52VGX6o
 YAVjvb2lPHJ8BOowAUcdNJX/8oc0DHU0m1QR/LQbWx+7vJIbbVBBDugeVMaL97AI4MfS
 zkCl1fpLQkpH4ebyn9P+oSdu+8jh/AA92MJGIIhOAJa3wFWpyfmZ9lGZntkxpOiFBB7/
 D8pxy2f+6rTGeR5GTh9/b95XjJISbe2/K/98sMwE5apkhYxyiPpCNRfX9GjoYd5nTWdF
 PAyIpRY/CIJ/pQSxKtikdWY93gIGRIbDfzSIPqOGqBymE2pj6A3rm1y+cV1xr36rAr5g
 Tc8A==
X-Gm-Message-State: APjAAAW02CPLvDz4egX6/3YjojgFE4YfB7SzBLMP/untgNnsLRQKDrsb
 g5tfebqp5bjCXFTXnPGE+BF6Gw8XZ1I=
X-Google-Smtp-Source: APXvYqxXdDcA2KJJoRcn0+fiyTbgZDShFuBjmrxmXTZjL4rPTcgFqWcpr+OkaoEZFX3m/g1y1XWuNw==
X-Received: by 2002:aa7:8e88:: with SMTP id a8mr6461888pfr.254.1582163280618; 
 Wed, 19 Feb 2020 17:48:00 -0800 (PST)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id b186sm318416pgc.46.2020.02.19.17.47.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 17:47:59 -0800 (PST)
Message-ID: <5e4de54f.1c69fb81.bce6c.1b90@mx.google.com>
Date: Wed, 19 Feb 2020 17:47:59 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Kernel: arm64-fixes-3-g374fdad4b2d8
X-Kernelci-Report-Type: build
X-Kernelci-Tree: arm64
X-Kernelci-Branch: for-kernelci
Subject: arm64/for-kernelci build: 2 builds: 0 failed,
 2 passed (arm64-fixes-3-g374fdad4b2d8)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_174801_992908_DADACE26 
X-CRM114-Status: UNSURE (   4.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAyIGJ1aWxkczogMCBmYWlsZWQsIDIgcGFzc2VkIChh
cm02NC1maXhlcy0zLWczNzRmZGFkNGIyZDgpCgpGdWxsIEJ1aWxkIFN1bW1hcnk6IGh0dHBzOi8v
a2VybmVsY2kub3JnL2J1aWxkL2FybTY0L2JyYW5jaC9mb3Ita2VybmVsY2kva2VybmVsL2FybTY0
LWZpeGVzLTMtZzM3NGZkYWQ0YjJkOC8KClRyZWU6IGFybTY0CkJyYW5jaDogZm9yLWtlcm5lbGNp
CkdpdCBEZXNjcmliZTogYXJtNjQtZml4ZXMtMy1nMzc0ZmRhZDRiMmQ4CkdpdCBDb21taXQ6IDM3
NGZkYWQ0YjJkODY1NTVjMmRkYzAwNzJkMzkzNzk1MDc4NGVlOTAKR2l0IFVSTDogZ2l0Oi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdApCdWls
dDogMSB1bmlxdWUgYXJjaGl0ZWN0dXJlCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKRGV0YWls
ZWQgcGVyLWRlZmNvbmZpZyBidWlsZCByZXBvcnRzOgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
YWxsbm9jb25maWcgKGFybTY0LCBnY2MtOCkg4oCUIFBBU1MsIDAgZXJyb3JzLCAwIHdhcm5pbmdz
LCAwIHNlY3Rpb24gbWlzbWF0Y2hlcwoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KZGVmY29uZmln
IChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0aW9u
IG1pc21hdGNoZXMKCi0tLQpGb3IgbW9yZSBpbmZvIHdyaXRlIHRvIDxpbmZvQGtlcm5lbGNpLm9y
Zz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
