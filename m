Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B30553B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ioK0yZn/BK9yXTrdGMJgWRqqZLe6U6TFNb/NqLOMeA=; b=sVQ+9C+f7opZ8G
	liPqJ0ZvCnfZsrN24nR4T/oqr9jaUD3pb83WoU9zzFxVoiQZI0X/ly/jAlYG5J8WN6Yds0bLYCnUt
	kdJM7veKQCQd7eU4ZjV2WMtrApIMoy2ZJ9Fn7LDQGzSNtAhKbC4xfqavdy1j5mh9vp429VR+e0BZ1
	eW+LDvh0kM5H7kng5Km6gII0BZyPFHgJp+XAkv6F+6T8SaTleNOJXE3VTpYQ84VI74Hsy1uOwqxgC
	YHw0+SJs5aE/AkgzTTJ8WoUFaCpkVjh2DOrtYKfDbfkkDw08+4fc1IF/IO7KSGIoZKbL2jhuDWZjP
	aiOjhZJCJ30eS/t60MNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfneG-0006Hv-GD; Tue, 25 Jun 2019 15:46:20 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfne4-0006HL-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:46:09 +0000
Received: by mail-lf1-x144.google.com with SMTP id a25so13000757lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 08:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5HkYvt7vqYcoplSqjUO7R3ulPIH/lqglCxToVLLxHq0=;
 b=qXtq11GckrDcJCHDDEgthhpG8mHYmTpXpzctewOXeUwZmzUo0b5ZeAtMwVAfPHhIPT
 3RhfwsBrNQETw2uzvpCbSc8dG/ITMshgLL9OzsWB5XOnH1VuBhB1eJF709b3TLytZa66
 iPZ6oUBRjQ47hp3xXYtwKt8NpfCcGF3sPAHVG6KRSOSsrYYx/5qUxulw8KdpvUSSNZ6j
 wxuwby4vZz9pG3VaHAkPbhhkzSoLLFtCq/7AA0gftSopUeZpN5J3cYWU7xqUlQBj2TsE
 sWo6eQY/SLn3t/XWBGW9SmsuLqBCzeFuVIqOzL9A+qq68NVNOowGczMSJrmpmUYAm2p8
 RLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5HkYvt7vqYcoplSqjUO7R3ulPIH/lqglCxToVLLxHq0=;
 b=AFDkZukcxm8gxakv1KUNe3UEtlr/s6oBeRrgYzPlGttwCWdnEpWn0iJs0JRf5utdUU
 9kQuXq5qMsXBXxcvdXBmDGs0/BH+PtJTqk9oV/b6VtetPoaDR/MtF/2YGpSDpjm0UfZX
 QF6UcEGuiWhOHId6d+Mh5i5fBYD7oOjjps8g3YjwzAFqCZb0wdyagH5+PTl4jnuLA3Wz
 1zkJUO/TDTcIc7/NtGZHJszCJzFEy00wBo7se+nVE+Chki0EhcMaTmlCmp+zAmSNVaiM
 1VEVciXPDrkf6dJnhiOjOkhTOXH3F0IKMNCXyHYlAOHPTUj4L6YoVXfQZOfjQeCdX3Uq
 WXcw==
X-Gm-Message-State: APjAAAWIjIT9mjSaihp4sA3kGeZEZRDGiDvf9CnOKW0oXF+X094ebmpl
 gX+BOaN3xgKlUu18B9Qc9vsALnszfsfnK9aaSuo=
X-Google-Smtp-Source: APXvYqzVkv3ISEpy81fk9GqWVELv6LncGBQA618cty6rXyn6Ym+TyTksnqIcZ4ZJkwyOgbRhI2GPWbZy/JzI4c4/Nq0=
X-Received: by 2002:ac2:5a5e:: with SMTP id r30mr16968201lfn.12.1561477566289; 
 Tue, 25 Jun 2019 08:46:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190621082306.34415-1-yibin.gong@nxp.com>
 <CAOMZO5B+uXF=1WTPsA-9LrmtTF0Q0s7Fipwtd1nkWSgr3ec25w@mail.gmail.com>
 <VE1PR04MB6638D58DED0D7092D8FCE93589E30@VE1PR04MB6638.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB6638D58DED0D7092D8FCE93589E30@VE1PR04MB6638.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 25 Jun 2019 12:45:54 -0300
Message-ID: <CAOMZO5AUnDJ_Wz3sWFDv4hZ-vAwO4_ioTW=5FUNDwFS7zBRJOg@mail.gmail.com>
Subject: Re: [PATCH v2] dmaengine: imx-sdma: remove BD_INTR for channel0
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_084608_302563_4D053658 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sven Van Asbroeck <thesven73@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, stable <stable@vger.kernel.org>,
 Vinod <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Michael Olbrich <m.olbrich@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Tue, Jun 25, 2019 at 4:36 AM Robin Gong <yibin.gong@nxp.com> wrote:

> Yes, although Sven only met this issue after v4.19, this potential issue should be there.
> But 1d069bfa3c78 seems merged from v4.7 instead?

Yes, you could simply do:

Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the
interrupt handler")
Cc: stable@vger.kernel.org

And it will get applied to all relevant stable trees.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
