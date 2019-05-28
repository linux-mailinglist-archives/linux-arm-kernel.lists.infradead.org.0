Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D332A2CB98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMQWnITNJJRJCQVkIaMyVQ3Kx7rJpSay2MV4mmKnwNk=; b=tpYf/z895LHrnW
	xI3nLJ50dsA3MFt1tw59rQeqggZ5eD3qBD+591HmfO67/WuurUd8dBKQMg59RgO6W+Ck+fNDtSohK
	OLIb/z0PJ4sRnVLvzV93SN+tBSssaJ3bVRzBGBHm904hcgN/3E6/c61AKwyQsiiQuXn+5qbnla4I+
	khMbZmek5IVY0pgpmtMPM3Pz/9bw/IQN2pKIEbUOdl1gplIrkliEAduRetKAOHEpnX0LMh0pTBVNU
	jPMw3TGJZnIlPKtJ0tbQ67cZH73p+d7gQgjZAoAHYT5dwjL8GczzKR97IjxQ1O9HjBhHTIbpP5i4T
	6HoQz7eX6MvY9pHonZHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVemU-0002w4-Lm; Tue, 28 May 2019 16:16:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekj-0000A7-Eu
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id t5so3540643wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MeV22BL5hfS4X5C1QCisA6E+loww6qQHxa27Rpq4STA=;
 b=t8EnxSxSHqX7JGzCuQ0W+V8VDDdrfYp0zXTg0Jjv2VES+ObbS608OuEC5aduG8a4/I
 rwaEnHAfehwqhg9PUQjtU5nQyBzyzsMgSzKx3A9yzTFORamwTqcIK7nbw8UyNXB/reNj
 eAmdi/bNMybaRTu88vlknWqsQojYxDnYZ/Y+GIEwRISrp98d3acLdJD8w0r/Du9sFekh
 sT0uBwFY+QLPEcdhbgyW7S678kKqXFOXDwVg/OqNifg7AI3r8Q30UWQwsFo+kb7j4/iQ
 ZJaDD/lq7Fgus/ZlD1a8TlJ+dwFMD3dtRwGv84ojGYGtB9lqL2jbod6gsr7Cog5uFHSG
 seOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MeV22BL5hfS4X5C1QCisA6E+loww6qQHxa27Rpq4STA=;
 b=frmLn4ADIKG3fPUA5kK7yE88oKSrk8tZ7be3ZWeVs/2IZ5GL3rPZoUntTUGTGuBvBH
 BU3aer1+ogWlPK1R2R2St7VtwKY3Wq1w5ONfCMAo02cmQU5Su/lpzR8ZJIfvb6Ub+Nqn
 FYeYpCfZTZ5svWynSnvnV8tyGjhDoqpGVRlvorosm3BS1O2PfAELa5FIe75I78NtB1db
 7roJWXfDX7jN4Rf1GFxeX9D3nTPvmk78haXL1TjNx2rhOE4Io3jct6l4rbdlukqti2yy
 AjSrJXfm61gMWSsdMFSAZNgPrF5piEY63ExfhdBdUchZrevPl2YJTE6tSIs/e5dpGgNc
 6XOg==
X-Gm-Message-State: APjAAAWyu2HBSEhN/+YAdq0U1f/aVZlIfFJP6mUJvu9Ip1s3j+q1vzQ7
 kobf44lJBO5SVP40pa61KjU=
X-Google-Smtp-Source: APXvYqwZj4S7dA+LFRVzSYZt/holujUhydPpu6LvW7id0q64AOuVXDwurd2DjKbvrBMgqBKJZCp/Mg==
X-Received: by 2002:a1c:208c:: with SMTP id g134mr3904606wmg.112.1559060103992; 
 Tue, 28 May 2019 09:15:03 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.15.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:15:03 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 08/12] arm64: dts: allwinner: a64: Enable IR on Orange Pi
 Win
Date: Tue, 28 May 2019 18:14:36 +0200
Message-Id: <20190528161440.27172-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091505_731366_508EC332 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKT3JhbmdlUGkg
V2luIGJvYXJkIGNvbnRhaW5zIElSIHJlY2VpdmVyLiBFbmFibGUgaXQuCgpTaWduZWQtb2ZmLWJ5
OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzIHwgNCArKysrCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzCmluZGV4IDUx
MGY2NjEyMjlkYy4uZTA1MTkxYjcxYWRmIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktYTY0LW9yYW5nZXBpLXdpbi5kdHMKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzCkBAIC0xODAsNiAr
MTgwLDEwIEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJnJfaXIgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKICZyX3JzYiB7CiAJc3RhdHVzID0gIm9rYXkiOwogCi0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
