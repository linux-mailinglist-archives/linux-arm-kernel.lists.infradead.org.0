Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830601227E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YKWhKwU3x/R7a68q8w7ndIRW6dxvTXsZbOLCnALEapE=; b=Gxl
	I9ZHwuuI4c45eg9edIYAtslBbtEZAzOfW4XI4hIRpccNeOXpilryZ6kMgHleX9U/RChtXMR8oYwDo
	cbuF0yb51sb7Cg26yJIprGIozBEBvpQHH+a1hRpVZkKdp/AlGmjrSWEtU+o8hPlPIibKZAADQfjw1
	r/pcMV+QqCgdPVppaSa5J82bZegd6W9hMJ0gNqGb24FsvrcR5AXRP1NYB+d5W0rYSVS7oEymM9wkD
	6AtKHfsMVbruRXGKLU4dXdea+anBLnFLH2jHD1l6iexurthnGleN4mOHBMAaUBTWc1B//G7+kcFX5
	UffPXlz/71WrgDlZOuya1K9pEY5ukyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9QB-00027H-SL; Tue, 17 Dec 2019 09:45:39 +0000
Received: from se15e.web-hosting.com ([198.54.122.209])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9Q3-00026Y-NJ; Tue, 17 Dec 2019 09:45:32 +0000
Received: from [68.65.123.203] (helo=server153.web-hosting.com)
 by se15.registrar-servers.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <akash@openedev.com>)
 id 1ih7kO-000174-Op; Mon, 16 Dec 2019 23:58:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=openedev.com; s=default; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pf6lwI0OtmTw6cMfHbrk+qj1Co4LlkApAh8zixkmj40=; b=gMWbLiCUrgpFV2mLT55GYt+kQt
 W+3mjSNGqA3ZwchmQTxXLw4zT9tayMndh+SCTzwuWHa2aR1WImhBcI76VpNnT+YB6KmK+Ec9ipFZl
 5TMseLhoWbSrxD/kIg55vAY6eHm3voNmj5IzLdKcBMaLa2eJiAUlB80AutuBfZkMh55+KAziq3aZS
 iUlEjGQFyngbUyT8PmPcNQtXDs+40sijdeFPOjx8u4cgcuPepsbeiXLoRiJqeg2ZU4bo0n4tVLV1T
 W++z5bXu3bv2/Zejaj+fENCUQIZ5/i7dscZwuNe2RonNVoRbGyo0OeP3kEjC+qfnU9G8CbSYAShUz
 ZIjZ8O3w==;
Received: from nat-inn.mentorg.com ([192.94.34.34]:44656
 helo=akash-vm.inn-wifi.mentorg.com)
 by server153.web-hosting.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <akash@openedev.com>)
 id 1ih7k8-003CWq-7t; Tue, 17 Dec 2019 02:58:20 -0500
From: Akash Gajjar <akash@openedev.com>
To: heiko@sntech.de
Subject: [PATCH 0/2] add usb2-phy support for RK3308 SoC
Date: Tue, 17 Dec 2019 13:27:13 +0530
Message-Id: <20191217075722.11646-1-akash@openedev.com>
X-Mailer: git-send-email 2.17.1
X-OutGoing-Spam-Status: No, score=-1.0
X-Originating-IP: 68.65.123.203
X-SpamExperts-Domain: nctest.net
X-SpamExperts-Username: whmcalls3
Authentication-Results: registrar-servers.com;
 auth=pass (login) smtp.auth=whmcalls3@nctest.net
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.02)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0c2Pj46HODYmpAMVAv0J1pOpSDasLI4SayDByyq9LIhVGTtulVTIveB2
 2GkZx2Xv70TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3Kk502M/hntTzIKfCMISdhHQGg
 t7nAtP8WjkKKy9v/mXRkty7kshl0qfjNTiHz6D+lTs1OFZCJnqICuBP35KwNAmisedSHrV8USIJy
 ZKu4Q0eBPJf4fBJswECxJoMRbkC3SF2DuTVJlHUR2BtY80W8dG60QfvEMzMeJ6Rw9B2oZpcFefeT
 nKVTea+Z7pU/97kaMRINxtYvoDPmxBEirO18GFgbEtxGbfWvsckv3Tqu01KJGGjsNnBvKhksFPgp
 Ju7VRAUaZyvXYsGqun+gsnRrw40vpN++k/mRssszRiW/L+aVL5CXNSk/AzmiJysF8dLHRyryw85/
 rAZb27+VZ3biGtaW8qQvbDNe5IP3ZP124DrwHHYNWMFQ3rxmq0HUMfG+c6Hob6r/eV86ndcww4rw
 I7v+rPO4bNDPm0iPpRI8tT6nvHgTJm4rUod0ueKDsCR8lJjuWToZaiaFIvhnz77Y+k6uhs/Q2KE1
 Lby4XA9T8Bmj3saNZ0eUp3kqVmG1d7Vk0NCCILyLLaQ9eQTOszvxQTkjHv8L1XCo8f/lClCdnQEw
 egH725V8o9NmtwsOgq00IT3zX/Zzh6cpDYUl6c6Y0/5r1yWIc3jXLVN/s8cHerYtW55yLfDen/wr
 oS11FXNac8XwfSk5a6wPi3PS+6vBhpISIqK1GdyQE0WyMBODOy30v1Op0AWqhD2stjbU32pojN4X
 8zAZfIZ8CjT9GInTMPN38Uyq3PQ8yDScr+8662B3D4UT/bdQYZMqtJwVgGaPV8GdcLPofFI165s+
 Fi8oQNCwxvxuh+xtfMocbqMn/Qow8uvbAccZ4WWjZTIX9MhLKTjECb0PwpN4olPuA0AI93gbcx8Z
 jKXXCSz+ofgapDj5Myrxgk8zlzkZR8hg4/tjCwvQy21RlJtzRtySOaj2KF+AYvFFhaUnET8cMwHU
 FSFp/ySXGPBwab3MRSsiX4HiRnxfIvD0xWRSasqqxNnWfwc3A8r6JfNzxEm+Adh5Il9bsJFhaqar
 dOLrAnCsmfJ3HSl/Lt1pDXWpU9yav05pkh6OyKSeNsS3Px6flMhiWi1AgZXOLlKfgzwl5b96WfO9
 Z3+qi/5h4DZCfPGWm7MoPBOavov9A2tPRpxsJ/Ez2OT1H/aAwarQpYDOYx/6JtUOkfNK1xk8kTd1
 Ny+HuiOkN2mAdCO+RVfxIo7mcAZ9GMPEl9B+0hmmdOnbSMz7Y9ZIgfFrL3927nPLXidUYhzTL/6b
 zJY8ZLbVls9GTjTyP2j0DLjHCOlbYrvqvTn3lmAWHSgj8REt1LPAYpi/k8cuog==
X-Report-Abuse-To: spam@se16.registrar-servers.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_014531_806827_1D936310 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 tom@radxa.com, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Andy Yan <andy.yan@rock-chips.com>, jagan@openedev.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add usb2-phy support in RK3308 SoC dtsi
Add usb2-phy support for RK3308 SoC in Rockchip USB driver

- Tested USB2.0 with these patches on RockPiS board and Mainline Linux kernel

Akash Gajjar (2):
  arch: arm64: rockchip: add usb node for RK3308
  phy: phy-rockchip-inno-usb2: add usb2-phy support for RK3308 SoC

 .../bindings/phy/phy-rockchip-inno-usb2.txt   |  1 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 49 +++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++++++++
 3 files changed, 94 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
