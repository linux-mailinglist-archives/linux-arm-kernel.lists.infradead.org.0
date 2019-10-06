Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D42CD2E5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/cCQ8wQCydvI+uiory0/iMYkQa1MgRKxQkpsy3LLFU=; b=bIzUlMgfyuCS9xLMb+3QI9P0qS
	vAU7ki2eYaP7F7oXY9tVOioZzivlVnBpyeDYrivLiBCgDEaxkrsA6ODDS6whU06IfYuopO714UA22
	KUl32sYdWRrC012/zGYdERCAag+bNbqzlupm48d1ZIjANVdqqG+vNZdd/m/kH9WvxMO0Svldwugjp
	FojiU4scCdw5Kvdf+RSPnFn2n+kp0HgKuT/NI8tlYDnuDoYTAtO4xmlu4hn2+R8tHHh3QQt4/uf7d
	8dx0JaKg5xLfWQDa7LHLvq11v1xwCOQBGyRpRMwg9rKggjjoRZe4jvKhdRqZLgIC7l9GGFYSMi7b0
	rCGf3dIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8Vh-0002br-Pf; Sun, 06 Oct 2019 15:31:49 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007r6-Sx
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375738;
 bh=/ScWQbBAyXuNKzjoeYet94tK8hr90mgTZg1PlOrDDcw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=lGdSiXeXnx05AcjF9FMoJ56Mi3xkP3i5CnjRD3vI6pAb475U2vcx9Vk8EiLGC6frp
 ebL2WcBtRC7OEq1VxhSoe43S94NtDZRpd8oElYHcm5lxxnGQ9GTVjftEV+mRqhj3uy
 /LNnnjc2C9GFPNjvEy1Xcmxvwqd/q7LU23E0l9/o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MkYXm-1hpG1X3Mxa-00m7K4; Sun, 06 Oct 2019 17:28:57 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 03/10] ARM: dts: bcm283x: Remove brcm,
 bcm2835-pl011 compatible
Date: Sun,  6 Oct 2019 17:28:21 +0200
Message-Id: <1570375708-26965-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:/zzvIW/HC4W+22ZxJXt2jd0PXF2oBqFI9Z/YdHJ6fAgP3DEamAL
 etDsm+3ZLBzk/bWktyG2CCSToz96TPhTYNfvL7qUMJbn4M78+Zf9R7CmfAmAnInf+iYyKf6
 QDfXOxG+Zjbs0R2MNRs5IDQG3mmJ7O1DmMZI7id5X3LvppRGenJHUhwj3zRfKnZiqn4HlZ1
 uoy0GZ0g5N2jTM0raklnA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5cwYUFPMH/k=:9xAVsgzFqpsvBMT3K9weAj
 3IpEWhFCTij5KtUp+zjBmo6OCZjOwHupUOJ6f9b5vDXV6FvFod2CRsWi/i1vzhxfFazA+B/g9
 zFz/zeOUGLQ5/4FDGHUuwwNUOEh+pxqSyKmHrRXdSn1Ic3rV7yOiFUAaf9ubnYg1CWgp9jnVL
 zUv9TmqSWpQfJgDuPc7mOT6QIG77Lvdpuox4m/DAdqQUw/NPSgYJ6eOfZ+ywXeL0ia9PoMOOB
 xcOvf6hrSVPX7G/n56zsKSpsLGW8SD/Lkht+1zrKSwL1tUTd3FqUXfT21PNdzI6dxvf2Dxsel
 Tcf86iyJtLOnbOFUZRkmXsvXEzPddRA321PAK9c4mwd7C71XyphfyuYUNMFn1t0MNoo9XbpiA
 jDSxa0vwqDBhwncaGhJFcBpTs5oPlJmFuz3IGsRQI77c25NmJLTRdN9/6cc63hWE/ZxnK9XEq
 6e3SS2K04XZgDUMnYVPG2El3n8SDMNMroEbiHsBNvxx9p7qYQX26+vLXBRXWBP8W7ouXLphnY
 IwmcDIAdtv4b6Mt0S3qJBKclG6AhZM5u6nEG4sYpipWtr9bqCPCCBv4eGScUZZw22J783ZpXC
 6J7lyRZpLLUGs41nvH1LsdLtceFQhu1LB6oETSa7DwWG7Yy/2ZaGjOnJAPWwG+Ogv0tnhCEmt
 qnDnY1n4hmE53A4EX7EfFEvqwVrygjm/kq1DwUbZSv0zixA/TxU57uZzx9lCihoaFMm2wJ1zV
 igTeuPUt5As3ENrrEaWm0IYC33FRYupOZ5zBAKz8MM4Y8VArWzed/ifKUrmyH6Phemx5mjTeb
 9PR0D4XawNKYsrwVppy4m9X1jV+pOIIFkQlrX+BmxZCk4geekWoxxZpPfNhB5IiueezKrfUX8
 krFleZqIxmZcCIECJSvLr91aJOvmmH2MoYsb2W7FWLIRNx0Lu3IXuDxEtuYQI98xKRPtPs5qp
 /HC85BG7fpVp8tkkqLGpeZtp4BMlREr6MagO0CtW/5LMSh5qFOf2f6aoEhaHXafcTWy4Y+bf7
 Mtn9nbP0zBc5Kzl2ydOyBHfVy4SJlClHCMjjL6cQ6H3/vR1DYwiIam1Ujc1g1CzfpUg5fH5VV
 j3ZEpn8mKtixipncktXPy0Bv8Hf2UFVOLwA4bBDp/BvYPH+Hz+xhhh3Fb4BpYcWz0f1j7AZXN
 73prhErVUputtf6fnJlEmxdkYnsOvONemXkTq33E2i7l2hgCyA/1EaTKJI+oe3fahKeZgjbGK
 Gv/ymbi9JQQXyteBeSBoqLNgEV0Rt913NfSgy7A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082909_226518_C9C5B4E2 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The downstream compatible brcm,bcm2835-pl011 hasn't been upstreamed yet.
So remove it.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm283x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index f16899d..ae8296f 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -396,7 +396,7 @@
 		};

 		uart0: serial@7e201000 {
-			compatible = "brcm,bcm2835-pl011", "arm,pl011", "arm,primecell";
+			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x7e201000 0x200>;
 			interrupts = <2 25>;
 			clocks = <&clocks BCM2835_CLOCK_UART>,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
