Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA581B1276
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=99FWkZPU4zi2W9P7VXkc+Vy4MzCGEr0MLYvsflkxkCw=; b=aI7
	gdzbbDN0I3optpTM6QUu7kic3Dx9Br6x0yjfXLuAVoeOwqx3CU8CQ1JdrXxqimfyEdCCZ05IMGr/l
	Z0i0RRky4fYL0BHMVYU2ZlagU6c0N+ESEpCxgGiXyIIS0Da4goq7eGkp8wbFsa9s5daqJOmVZ3tpW
	9PfCTZ4LfvdVxfyXT9Mad9zFvrIQw/tlU3XJetI0mxF05q8Q8xPC1SyfXUXQ3NZYetVNGAVaUi50Y
	XRN4THk+XGpKXRABjx13p5w0rkLneUoej+UmjZK27U42Stuq7R9ClyrAgmhsl13JsAitjyvF2yy8i
	y56nbhTF4XVJ9kBQ19GHRFNo6Ih26Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZoQ-000723-Qa; Mon, 20 Apr 2020 17:02:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZoI-00071Q-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:02:19 +0000
Received: from localhost.localdomain (unknown [157.46.94.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2FB820CC7;
 Mon, 20 Apr 2020 17:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587402137;
 bh=aksiYpWTvag3k42u0M1b1NrjxY8yKocMPEw91TQYxEU=;
 h=From:To:Cc:Subject:Date:From;
 b=bM5TEFM6C5MJE7Kcy6aNRoG0fjnGHLSHqXpkrnuuYUVe4H9Ivr7WigZ0IzlLMZ5R6
 ggHj/GRUmCAAiaBJmz95FdNW6UpXR1wn4Io//QLjuSabgrWzfYKpzwBhnFUWkdRS0S
 7PcmuXjFHlv/Vt6tf5kpQEzocBySnhWsaLV7oqtE=
From: mani@kernel.org
To: gregkh@linuxfoundation.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v3 0/2] Add CTS/RTS gpio support to STM32 UART
Date: Mon, 20 Apr 2020 22:32:02 +0530
Message-Id: <20200420170204.24541-1-mani@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_100218_726611_8EE7E3B1 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 linux-kernel@vger.kernel.org, andy.shevchenko@gmail.com,
 linux-serial@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <mani@kernel.org>

Hello,

This patchset adds CTS/RTS gpio support to STM32 UART controller.
Eventhough the UART controller supports using dedicated CTS/RTS gpios,
sometimes we need to use different set of gpios for flow control.

This is necessary for the upcoming STM32MP1 based board called Stinger96
IoT-Box. On that board, a bluetooth chip is connected to one of the UART
controller but the CTS/RTS lines got swapped mistakenly. So this patchset
serves as a workaround for that hardware bug and also supports the
usecase of using any gpio for CTS/RTS functionality. As per the sugggestion
provided by Andy for v1, I've now switched to mctrl_gpio driver.

This patchset has been validated with Stinger96 IoT-Box connected to Murata
WiFi-BT combo chip.

Thanks,
Mani

Changes in v3:

* Added Andy's reviewed-by tag
* Fixed minor issues spotted by Fabrice

Changes in v2:

As per the review by Andy:

* Switched to mctrl_gpio driver instead of using custom CTS/RTS
  implementation
* Removed the use of software flow control terminology.

Manivannan Sadhasivam (2):
  dt-bindings: serial: Document CTS/RTS gpios in STM32 UART
  tty: serial: Add modem control gpio support for STM32 UART

 .../bindings/serial/st,stm32-uart.yaml        | 14 +++++
 drivers/tty/serial/Kconfig                    |  1 +
 drivers/tty/serial/stm32-usart.c              | 53 ++++++++++++++++++-
 drivers/tty/serial/stm32-usart.h              |  1 +
 4 files changed, 67 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
