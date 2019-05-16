Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A8720EB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nd6eHdyZuYa2kIIIJjsOB903tG6wfScBi+Z5CgxYVCc=; b=RHj+RXRoJTx6SK
	rEP3UerrzPixAQfANotoc1ltAaui2aL9SfcrW9ve4+o8DPNJuJmfKy23Xam500M+8XRwJQaHgehXC
	RuOam3VaT/zMJbwZL29+6TcRXIvwrTH40/yhFEh35iKIWx/3IfWXMhrXDoljTDj0mZwn0h02kABed
	5duvoLskKjGPqRUcrvBOq+qSXW9Mdpkm7EQ8t4L8Lh/S/rP5GIo5Mpbd9SDdpPL6UGd5uwdbT4niF
	+VcOv7o7oGB7RnyeYEUN6rx1KONMbrUh24j19laD70wPhLpEtTJJ8VaAiK2DBAMktCfMF3FqQgXWd
	SH/SloGfx8Rd496y/sqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLCE-0005xE-Q0; Thu, 16 May 2019 18:33:38 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLC7-0005wO-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:33:32 +0000
Received: by mail-lf1-x141.google.com with SMTP id h13so3411166lfc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 11:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G+UOIQsK9fdttsJTvXZlnEG7LtoiIYogaWMmnhqc+ok=;
 b=X+NsxmTuP+wmtl7CIf+6brQUbRvm+YTEx6xdwkGhDK4KdncaLrOWHFtjDdCFzfBMD2
 Hcj6tKow81vKPvXKlMSaz2SK+bXMwjPhn6cFD/Y4ex4we1aJNxSYPqxqa2W2lFWPH9Jv
 RTIpvkjjTj0DIebp6ewtE8VrW+N0VdnBrJ9l2l+AyHkjRoHdGZ+JmNmCTW/OvWIsiivV
 syCgauDHV33Tj/i02gJKO4lhE2g7nfiJKwKfVlUzUtxrWJqLDxeoaRcFmSi+ts6elJCA
 ZVA1Z259n5dDcSUfGsMa4ON28CMNjFXk3tr1yw47tAH5TSRZ9yhSmcxGQzaB4V6mtJpA
 Ntmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G+UOIQsK9fdttsJTvXZlnEG7LtoiIYogaWMmnhqc+ok=;
 b=o+aK7js2zngKNSFaoHVsBp8aYjUDu0uD4lVuemGYh139NlqgbwZKH7CiAgrFm3cEwh
 DrZBiL469LOtktMzbH5sgLmirPY7raYlIbaHEkYFE9el3pp7d9/SIt3tU8Gv9rvrHY9k
 wyRlVOXOJeebLK4SeV48PPn8CQtt5AAWcP43oWNqRqVHZoOYbFKQJRa+tkfnURiw9tZ6
 Eb3AuNYOE7GHjRCuIwxzM8pJMFt5R2Xssqvntw4lsSyuxXOZSWxhq5q7nAuZpCa7dl1d
 WIQow+/8CiNu4it6VoqX+zJYojDU0AJw30dF/mob8ckR1DV/Y9ROMKN8hyn1mx5BnEw8
 wobw==
X-Gm-Message-State: APjAAAUBWC1O/Za0iOxq71MSyJ7v6leJ4dyH77F3IBfkAE+AJF31yMus
 Cla61M5zcyvnnRLSKmCrnR+nSWGYwEHGU/xvrMiU3Ozy
X-Google-Smtp-Source: APXvYqwi2VC0mkED0PDqmCKfRnKlbR1V2ivKuFx74kxGlmBApi18n5RaG1NyaW1xGZ3QiEE3xA12ExoZOAA2iJlblQE=
X-Received: by 2002:ac2:5621:: with SMTP id b1mr26223764lff.27.1558031609083; 
 Thu, 16 May 2019 11:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190515144210.25596-1-daniel.baluta@nxp.com>
 <20190515144210.25596-2-daniel.baluta@nxp.com>
In-Reply-To: <20190515144210.25596-2-daniel.baluta@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 16 May 2019 15:33:19 -0300
Message-ID: <CAOMZO5Avmjf9GpGWBbMJrOxWdvdBTyXMoOPQw_uOQHhCayuHtg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: imx8mm: Add SAI nodes
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_113331_148999_C4E24980 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On Wed, May 15, 2019 at 11:42 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
>
> i.MX8MM has 5 SAI instances with the following base
> addresses according to RM.
>
> SAI1 base address: 3001_0000h
> SAI2 base address: 3002_0000h
> SAI3 base address: 3003_0000h
> SAI5 base address: 3005_0000h
> SAI6 base address: 3006_0000h

No SAI4?

I know the RM does not show the SAI4 in the memory map, but the clock
driver does show a SAI4 clock gate.

So it seems we have a contradiction in the reference manual. Could you
please double check with the internal folks?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
