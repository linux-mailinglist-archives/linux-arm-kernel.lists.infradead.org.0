Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A148D50B2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qjb0TVyQ+gr3dmCXvI5yl7mqkKg1ALGZuyq/ncmoNuQ=; b=CbJSg9/sisE74R
	WC6MEgc2Vh6HvTLBXjkylEP4vTVjKSwFr4b2WFzA5Hj3XaKVdYq5M+yombPT8ADhTlTd3dqTjnArk
	cWdNfODtseozt6AJBfH6ol6Qa0V2f+wM0DCqapINAOdljBOsr0lXaYFMw+Fmg/DbL2xsoj2TrEF+i
	bm2wMBobhZpFbLgofdKRdNWBqDyO9ZYQXPPU/PsYORrsfurzYqcNFjK/X5Cq5IV37MIKuEkJyBTiN
	ocA2cn4BiMNRB+SOk878rutQc2K5FZCFanH0mIrC3A0ZVJs6md6SvmisZgiCIb1bs2rQNrnWZFi5u
	5mPPp9BIYIxwYYPEMlOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOUc-0006NV-LA; Mon, 24 Jun 2019 12:54:42 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOUG-0006EW-RC
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:54:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id x25so12536110ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 05:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M1JNblMWL1UJydhDaOs1aVCdSHO2vHTNXrcJ9XfhOto=;
 b=AF5vIQ5Hupi4FNbYV2kGV4xOfPM3ulb1rRfQmWbQr5Ro3xoofZZge6mAwUVep7f04h
 /9FnvWP2O/GiGuxuwAZJhBpJA5eCAYuWnE6JM1h9Mydqpx3uq2jO4H2Q/EhATGLw99rr
 /evcrL2KspOCo2UH1DdmLLcq+cxtf/djSMri+5kZ8VQBwzLSkNSq+xeKjTyqOZdiXfxc
 r7o3AvgfaaVBwj1Ewen5q35C2XNx35g5Z0w02AsEl4AKF3ApiuaxkR3CZP6OicvK6W0d
 2mJj38Ma8R9/lqAYOF7uVILk7S17rUzrizWUxPtSHJeoO9fFXPVN2JW2YOEjFiRE9GIJ
 q9gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M1JNblMWL1UJydhDaOs1aVCdSHO2vHTNXrcJ9XfhOto=;
 b=a5ZaMYVdii1fZVtMySZsawFo13EgfJBh71Zp0vopcDF05NMDPZtL/5ktErRzQjIC4S
 Q9NwdUazbHhHAHTh0dCSKgOfrny1Upm6F2Lckylpf4KMy0Ez3GGx7FU9A5u+Mr0PHDJA
 ZfoH1bcPLk9fQCDFqsaWSNLmpDuMN5vhWJdJj10N0S6Li3GKvvx3TMowdMZuFCX4exiL
 0bDHsdlYh7OBNLr7K325u68FdHHUKBQQunPSl84t3DkYdn1et/fLapvbTaLXQzLbJbXx
 3kPYJK07cCou18Mdj50YHIdJBv9i3GRz0zG37svrREfbsKeV4u3eysF7ynk6g5wBItxR
 I1RQ==
X-Gm-Message-State: APjAAAU+7/gr1HeHwFtY5HVSDYneaGlPKv0plmT6Wae7K/sdZLidsZHM
 ER5rML/r/radfHKO6RQ36czXRfiYXPebr5WUNXE=
X-Google-Smtp-Source: APXvYqx12fSqGEeTpRklsnlLBWi1B3OZsYNSLqkKkR4XEAv5A7APelVbsgnk/wQ5UP1qlBs2AcU4EovI5OPGe+uwOqM=
X-Received: by 2002:a2e:7d03:: with SMTP id y3mr34782350ljc.240.1561380858632; 
 Mon, 24 Jun 2019 05:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190621082306.34415-1-yibin.gong@nxp.com>
In-Reply-To: <20190621082306.34415-1-yibin.gong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 24 Jun 2019 09:54:40 -0300
Message-ID: <CAOMZO5B+uXF=1WTPsA-9LrmtTF0Q0s7Fipwtd1nkWSgr3ec25w@mail.gmail.com>
Subject: Re: [PATCH v2] dmaengine: imx-sdma: remove BD_INTR for channel0
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_055420_900621_ED52F953 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sven Van Asbroeck <thesven73@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, stable <stable@vger.kernel.org>,
 Vinod <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Michael Olbrich <m.olbrich@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Fri, Jun 21, 2019 at 5:21 AM <yibin.gong@nxp.com> wrote:
>
> From: Robin Gong <yibin.gong@nxp.com>
>
> It is possible for an irq triggered by channel0 to be received later
> after clks are disabled once firmware loaded during sdma probe. If
> that happens then clearing them by writing to SDMA_H_INTR won't work
> and the kernel will hang processing infinite interrupts. Actually,
> don't need interrupt triggered on channel0 since it's pollling
> SDMA_H_STATSTOP to know channel0 done rather than interrupt in
> current code, just clear BD_INTR to disable channel0 interrupt to
> avoid the above case.
> This issue was brought by commit 1d069bfa3c78 ("dmaengine: imx-sdma:
> ack channel 0 IRQ in the interrupt handler") which didn't take care
> the above case.
>
> Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the interrupt handler")
> Cc: stable@vger.kernel.org #5.0+

This 5.0 notation does not look correct, as 1d069bfa3c78 was introduced in 4.10.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
