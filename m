Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AB92A622
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GJm8amOMTsBAhNS5IjirmDIe8eBXNurdqOfmisD2u4=; b=unYTqH+CrsofUm
	69Ad+gy1q4j43JIlSNzFJZfG0woLtHk/rMSOAO2Ib0nemBsCSwEuQy+uRLiqU+pCo17Bf5Ps3FSMZ
	JmGRlda2cCh8Z5c86gcPlfVImWjKUOxUMLsNwd09Hym9wPEJ/ifnKqAZBqO/JO4JpYQm6oTP3fSTu
	aZ0+Hk99ZLstetUVFdaz83aJrF93WxLWt7r6i/NeWWrbpzFOC7FZFv4QgCaGGs9HD3GSDKH0Eb4Ey
	mU06UC6cdtJda4phl9brS7aztjiC6QprLacaBsL5zWZseKPo7E9cHMI1pTx8/LhhoLnZRnY6nurB9
	im4+uRXr/TDKwkbqnbWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb8T-0001Oz-Qo; Sat, 25 May 2019 18:11:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb6w-0006nn-G1
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id x64so12309057wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q27XYokGtE0PF+e6Jf1zBq2DoW5PvxIGPkQQOfCJr1E=;
 b=SrSzMQys9MTC/2xLSRKZBSUjXhljuG/ZGp8eH19L2BUG75+6aDX+JSSuAbTCmf0C3w
 BrGW0GK9fZMBt4MOJ/CVIR8MCrhKiAVr9Ota136OQS0Fccwft3AzQU4w7kw/cpex7/iK
 u3BmO1g+8jLwdJx1dsLsRzEB+Dm7mxYa7lp4fSP+Wm4BXQH10rX/SNyo1PKsnL3OJHy3
 bvZ28EVxIi/Eb73rbLObriud5TlmsZa23Onbw91uh/xtF67EkgmfmVFfgDhesBjzQQxX
 9SpVdVaFJM1sgSZyiSxrPYuMJZdChQbdVU84hLfa3x8mPqNJVL6hDal6z2fdN4lt9+hT
 6CoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q27XYokGtE0PF+e6Jf1zBq2DoW5PvxIGPkQQOfCJr1E=;
 b=WCKOn1t8gsCmuZgIm3vU6/6N4UnXbkltBFJGD5olpG1BsZkOClp3Oda9QqLpwtSsrS
 MMEtvVM8hyxzA1eKZib/hpofnujQVJ12sfnblGBG7+BOXyzT9NhwmGk/FbpanF2hZ4aw
 pV/GqYboVftWb3Ohk4xPGjINrAtuEtWB863k67tCo8UfSd0rckvRDYA9xNco/fRx7ssL
 rYctpR0FJC+3TeHHmTj7BrxfRflT0VhOZOLYBu+Dp//QINonVvoQzGLJckC1D5ORVJpW
 LPL0RLZBbm+xTuf4BOVFHOKRgmTh1JALS5LtLcRRLgs6wSLZ/3eagQdfD634BFE5oYfZ
 djdw==
X-Gm-Message-State: APjAAAVEGzb3Vk9qQ3wbquDtPeIPoWLZPQD0tBw5dxApyeG6ks4Masrp
 F69FOSk3kF80vDbcDPt9PyM=
X-Google-Smtp-Source: APXvYqwaUGL4sJh71OtyfN00eKHWuGXOq8Rv9Td3pXKmqq0A8gYKOB04Ay8hZqO5UJ088+H7Oq83ow==
X-Received: by 2002:a1c:f20c:: with SMTP id s12mr10674822wmc.151.1558807774794; 
 Sat, 25 May 2019 11:09:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:34 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 05/10] arm64: dts: allwinner: a64: Add IR node
Date: Sat, 25 May 2019 20:09:18 +0200
Message-Id: <20190525180923.6105-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110938_572488_1D41A32A 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, Igors Makejevs <git_bb@bwzone.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSWdvcnMgTWFrZWpldnMgPGdpdF9iYkBid3pvbmUuY29tPgoKSVIgcGVyaXBoZXJhbCBp
cyBjb21wbGV0ZWx5IGNvbXBhdGlibGUgd2l0aCBBMzEgb25lLgoKU2lnbmVkLW9mZi1ieTogSWdv
cnMgTWFrZWpldnMgPGdpdF9iYkBid3pvbmUuY29tPgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2ty
YWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDD
qXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWE2NC5kdHNpIHwgMTggKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1hNjQuZHRzaQppbmRleCA4YzViNTIxZTYzODkuLmIyMmIwYWE4OTUxNSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQpAQCAtMTA3Miw2
ICsxMDcyLDE5IEBACiAJCQkjc2l6ZS1jZWxscyA9IDwwPjsKIAkJfTsKIAorCQlyX2lyOiBpckAx
ZjAyMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hNjQtaXIiLAorCQkJ
CSAgICAgImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOworCQkJcmVnID0gPDB4MDFmMDIwMDAgMHg0
MDA+OworCQkJY2xvY2tzID0gPCZyX2NjdSBDTEtfQVBCMF9JUj4sIDwmcl9jY3UgQ0xLX0lSPjsK
KwkJCWNsb2NrLW5hbWVzID0gImFwYiIsICJpciI7CisJCQlyZXNldHMgPSA8JnJfY2N1IFJTVF9B
UEIwX0lSPjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAzNyBJUlFfVFlQRV9MRVZFTF9ISUdI
PjsKKwkJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCQlwaW5jdHJsLTAgPSA8JnJfaXJf
cnhfcGluPjsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCX07CisKIAkJcl9wd206IHB3bUAx
ZjAzODAwIHsKIAkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hNjQtcHdtIiwKIAkJ
CQkgICAgICJhbGx3aW5uZXIsc3VuNWktYTEzLXB3bSI7CkBAIC0xMDk5LDYgKzExMTIsMTEgQEAK
IAkJCQlmdW5jdGlvbiA9ICJzX2kyYyI7CiAJCQl9OwogCisJCQlyX2lyX3J4X3Bpbjogci1pci1y
eC1waW4geworCQkJCXBpbnMgPSAiUEwxMSI7CisJCQkJZnVuY3Rpb24gPSAic19jaXJfcngiOwor
CQkJfTsKKwogCQkJcl9wd21fcGluOiByLXB3bS1waW4gewogCQkJCXBpbnMgPSAiUEwxMCI7CiAJ
CQkJZnVuY3Rpb24gPSAic19wd20iOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
