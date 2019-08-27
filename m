Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538F19E9C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4caw+1rAsPY4UFrpdFALaZtrxk+pKd8kuSWajGQDMwk=; b=c3srI9AQPuu3D5
	dE9HgjkXHGs3rRgvlmpWWTfe+/joJP9uOI4G1GgxEUegHivpBphaAb8+0vq7eeG90F/67KffoOnUt
	zpRzwYp5webaLnqLkAV44CESO2fcHmttIwl/USOKzlpFBsqAHHzNUw/UQzp4/6Oe3ihhg8R5Sa6rv
	VKTjJHHpTGnq9GFoN9vD0stTZICAmx8fvZT3qpCPeYiuPGNTw2MaEsk1utb1xgkojBCo71NJuNH4F
	CdGixB6i+gqZz6NYv2q60Fn9uihRKqtbbG/6S+Tkt3VYBMSO6hT1aegtQjL7HE+D7AGoGH6YzgKsy
	baMsuX6HCffWdsYbluiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2blO-0001pf-J0; Tue, 27 Aug 2019 13:43:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2blA-0001oR-Te
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IR73i9W0EgWINjS9LPHNsm8ROGSdMjBWUOLcAHrBo3w=; b=j+np2dDDpbw0CoBR0jB5sUlni
 j9ktn94XD/d4xb2OmpNf+hF25/OV57icLJ0Orwx5/kPjLZu8Bi78psmXzgPb7AjD6gBUVK6wMICOs
 R4bjnE13q6k8dNtsSp878vxHDHvDZPCTa0AMhlpK1bEWr33iK6wVVy3ZuDSMYtrnm0ihM6b448OYy
 zAar44mmsQyiYgoFVUiWz09bswrfk22p0RkQtCsKkUEM1eB3lN9m3gzgwjJ0rPB1S0TdXCg3ZVJWc
 xYvzljn2z2dN+Gfg4KRPmkCs14Q/lZrST1WZr7GnBpk7vZdwNUCQt0m2kIghJgxEqLF0wRxLuWds4
 c/hHzmi6g==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55220)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i2bl4-0004jw-9A; Tue, 27 Aug 2019 14:43:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i2bl3-0005nO-KV; Tue, 27 Aug 2019 14:43:37 +0100
Date: Tue, 27 Aug 2019 14:43:37 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org
Subject: Continuous SD IO causes hung task messages
Message-ID: <20190827134337.GK13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_064345_092047_D8C74005 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While dd'ing the contents of a SD card, I get hung task timeout
messages as per below.  However, the dd is making progress.  Any
ideas?

Presumably, mmc_rescan doesn't get a look-in while IO is progressing
for the card?

ARM64 host, Macchiatobin, uSD card.

Thanks.

root@arm-d06300000000:~# dd if=/dev/mmcblk1 | md5sum
INFO: task kworker/2:1:52 blocked for more than 120 seconds.
      Not tainted 5.2.0+ #309
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
kworker/2:1     D    0    52      2 0x00000028
Workqueue: events_freezable mmc_rescan
Call trace:
 __switch_to+0xb0/0x198
 __schedule+0x22c/0x604
 schedule+0x38/0xc8
 __mmc_claim_host+0xcc/0x1ec
 mmc_get_card+0x30/0x3c
 mmc_sd_detect+0x1c/0x78
 mmc_rescan+0x1c4/0x35c
 process_one_work+0x14c/0x408
 worker_thread+0x140/0x3f4
 kthread+0xfc/0x128
 ret_from_fork+0x10/0x18
INFO: task kworker/2:1:52 blocked for more than 120 seconds.
      Not tainted 5.2.0+ #309
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
kworker/2:1     D    0    52      2 0x00000028
Workqueue: events_freezable mmc_rescan
Call trace:
 __switch_to+0xb0/0x198
 __schedule+0x22c/0x604
 schedule+0x38/0xc8
 __mmc_claim_host+0xcc/0x1ec
 mmc_get_card+0x30/0x3c
 mmc_sd_detect+0x1c/0x78
 mmc_rescan+0x1c4/0x35c
 process_one_work+0x14c/0x408
 worker_thread+0x140/0x3f4
 kthread+0xfc/0x128
 ret_from_fork+0x10/0x18
INFO: task kworker/2:1:52 blocked for more than 241 seconds.
      Not tainted 5.2.0+ #309
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
kworker/2:1     D    0    52      2 0x00000028
Workqueue: events_freezable mmc_rescan
Call trace:
 __switch_to+0xb0/0x198
 __schedule+0x22c/0x604
 schedule+0x38/0xc8
 __mmc_claim_host+0xcc/0x1ec
 mmc_get_card+0x30/0x3c
 mmc_sd_detect+0x1c/0x78
 mmc_rescan+0x1c4/0x35c
 process_one_work+0x14c/0x408
 worker_thread+0x140/0x3f4
 kthread+0xfc/0x128
 ret_from_fork+0x10/0x18
INFO: task kworker/2:1:52 blocked for more than 362 seconds.
      Not tainted 5.2.0+ #309
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
kworker/2:1     D    0    52      2 0x00000028
Workqueue: events_freezable mmc_rescan
Call trace:
 __switch_to+0xb0/0x198
 __schedule+0x22c/0x604
 schedule+0x38/0xc8
 __mmc_claim_host+0xcc/0x1ec
 mmc_get_card+0x30/0x3c
 mmc_sd_detect+0x1c/0x78
 mmc_rescan+0x1c4/0x35c
 process_one_work+0x14c/0x408
 worker_thread+0x140/0x3f4
 kthread+0xfc/0x128
 ret_from_fork+0x10/0x18

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
