Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF201D4761
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ohe7PZsJ4A1ZY7GsQ7pEvONo2UY94MKnUaTyxazcSHo=; b=NDbyJkdGTjGZ15WslW084zaHmh
	y18tOUSuCYC9VNRshSG8yYtpqMqLHvN4jiBduwzNEwWPoxrEf6XmXY4cdnHGV23y0ZSHZK/KSFpU+
	VFqkIK7EAYTItyM1avrBORWXRbzYmhBMjVYaYaQaoYYxqXHoawdJ4WIyxtee/LSvbi9t2uzXbxIuv
	IaPN12A0xQIkiJdkAHXoQzKN/b7XzLwkqIbk+erSvYb8tZndzS6gSV7d5tR9iOsV1e0DRmga3RQlz
	mNmPdo/e7K91rChKXefU0c1vpDHTSgpRF0+4jh7CWQ1v5UyanyH9hDdGTMYmNQBOqYLsqHrihIio4
	RLt+/x7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZV82-0003en-5G; Fri, 15 May 2020 07:51:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZV7o-0003dp-Bm
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:51:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so2410925wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 00:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/hbVzyFGS1UmGEvVIj57oHLIBKMXLaE4t9FY/qY/HWM=;
 b=fRA0I55PCsxOBnUcYqMa2WZtI05hG6KwLouBvGq4PEw6YZmmrCap11xAqL4f+TFlci
 4jBAiBJtif+AK0o1ZKEX4SCHE9oBCddNuun2WN7VlS9TTt0GqBScoJN2u4fbLCehoFo5
 iDVxWOz/sqyy1Rn16DU485TpB3VlSwa6x/2svSQ+Ultn8YFz2a6IWrWdrKrGVlrkIuST
 9Cj3Vw9l6AOb44eeCondkvBsalwoY3Ek2ZvWaE6Kxc2ndAiYvOdbAm+a1RXTlLWFGauh
 9jkEokfw7pmXwygCvykKFjckA5tO6OGcQbPcduCGkH+SaEGR2LhBX5zl0pAa3tcQyQyx
 JauA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/hbVzyFGS1UmGEvVIj57oHLIBKMXLaE4t9FY/qY/HWM=;
 b=NW6YgZHGw3/jbf3WaMoDDln7kdE7DBRbLIhwDpLf4IEL1FJ4uKpTUQN9KBUZNaZnRh
 f4bv4UdREoqQWYvSa55C+RJAyywO/bNPsiFqgxYGtS6UmZZCe4qYSOHsbv8zK/Da/axg
 91Jx6SVhxWMZXDREsWvmKA+HOXhUcBdWc/n6m+rc1wcJDT1wEDR+vTluW3BFcF4zmGGi
 sI6otS+/n8EOlbpCHk3eBhjuHwkPyQu80voackNZtDk02J8vRX9m4RUW3t2m6i0V/+MA
 W6Pol6ZjJZx8Seq2jcTn+dwyrBfeyim6sSIPYR0t+VP1fGBYU+R5g/myq+ftY2r3+jlq
 sN5Q==
X-Gm-Message-State: AOAM532YBSL+v7Q23uVvt7jaQkuD8ad04d+S4zaUEkfL66KVmjwbw/TL
 xwRqeHwRGmETofB+QGfmRDnrbQ==
X-Google-Smtp-Source: ABdhPJzzgIqRYccdOCLaRm5r/FwnYo3XCP3xReZ1daSwHywCpusrhkeHpNhGtbsM39QclzulKTXiaQ==
X-Received: by 2002:adf:fa0b:: with SMTP id m11mr2706089wrr.417.1589529078722; 
 Fri, 15 May 2020 00:51:18 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00bc4b798f4f30d41e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:bc4b:798f:4f30:d41e])
 by smtp.gmail.com with ESMTPSA id m3sm2246686wrn.96.2020.05.15.00.51.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 00:51:18 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: sudeep.holla@arm.com
Subject: RE: [PATCH v3 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Date: Fri, 15 May 2020 09:50:32 +0200
Message-Id: <20200515075032.5325-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506164411.3284-1-sudeep.holla@arm.com>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_005120_439133_862CFDC6 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, arnd@arndb.de,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, steven.price@arm.com,
 harb@amperecomputing.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Sudeep Holla <sudeep.holla@arm.com>
>
> Hi,
>
> This patch series adds support for SMCCCv1.2 ARCH_SOC_ID.
> This doesn't add other changes added in SMCCC v1.2 yet. They will
> follow these soon along with its first user SPCI/PSA-FF.
>
> This is tested using upstream TF-A + the patch[2] fixing the original
> implementation there.
>
>
> v1[0]->v2[1]:
> - Incorporated comments from Steven Price in patch 5/5
> - Fixed build for CONFIG_PSCI_FW=n on some arm32 platforms
> - Added Steven Price's review tags
>
> v2[1]->v3:
> - Incorporated additional comments from Steven Price in patch 5/5
>  and added his review tags
> - Refactored SMCCC code from PSCI and moved it under
>  drivers/firmware/smccc/smccc.c
> - Also moved soc_id.c under drivers/firmware/smccc
>
> Regards,
> Sudeep

Hello Sudeep,

In case it helps. I have successfully tested the 7 patches series
on some platforms, playing a bit with few configurations.
Qemu emulator for arm64/cortex-a57 with TF-A (v2.x) as secure firmware.
Qemu emulator for arm/cortex-a15. OP-TEE (v3.x) as secure firmware.
A stm32mp15 device (arm/cortex-a7), tested both TF-A (v2.x) and
OP-TEE (3.7.0, 3.9.0-rc) as runtime secure firmware.

Helper functions arm_smccc_1_1_get_conduit()/arm_smccc_1_1_invoke() 
works as expected AFAICT. No regression seen with older secure
firmwares.

For the patches 1 to 6, as I poorly tested [v3,7/7] soc ids,
based on tag next-20200505 [1]:
Tested-by: Etienne Carriere <etienne.carriere@st.com>
Reviewed-by: Etienne Carriere <etienne.carriere@st.com>

For [v3,7/7] firmware: smccc: Add ARCH_SOC_ID support
Acked-by: Etienne Carriere <etienne.carriere@st.com>

[1] 7def1ef0f72c ("Add linux-next specific files for 20200505")

Regards,
Etienne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
