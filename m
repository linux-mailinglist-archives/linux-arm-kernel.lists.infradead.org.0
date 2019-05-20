Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7175F24145
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wd2umkE/FfCLovsZrgRc2AheovB0lEPm1ZbtfPFPOtk=; b=ggoKuugcBtHutj
	cN2kmVb1jGV9+7VG00MaIpjTYOlXDbJIXbwWqNzYAJOzAgjRqu+cfRgwEIIGvYt7S3LohWvQFkIpd
	EWQgCs1ovsXKbJONh/YPD+CZs4mYPwj4/3yHtjhqbdvCHt+odbJwrZjp/yxqhDi1djPXGNRTwvPhZ
	GMg2ctzAWmvjuD64A+1TFVxuj96v4HU8jOMQg0k8MA7J7DEXl19/XWh3vt8BEZMYFh9sYN+4DVvTt
	IiuvVzK+8i7MRW3ugEyndpM32zgaMS8GIbTG45Wr2YLPL77tUpJn6Y//mV+XXjL5ptvdnkyxC9Sro
	dgTBfMdkVmT+RCaRJIAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSo2D-0005ZA-98; Mon, 20 May 2019 19:33:21 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSo26-0005YX-4N
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 19:33:15 +0000
Received: by mail-lf1-x144.google.com with SMTP id n134so11160776lfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 12:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yz8Y8j4LrokiV0kHGKvYwP2NDd57XNHFUFDJFy1gO6M=;
 b=OlhGz3hX9ttMhH0DBkznm5Hzb3CE0esiN2TGXVrnCfKVux3ap139WFhixnnjcuj8Uw
 eXfMa/kv7mROD0/mhmUVGiRFJwtePrDwcTQW7/B/tdXhnmcv0QRvMMF5zbF9/p9/bmDr
 O1urDaNv5xouz1I+cXyIvUiYBkyh0pZpgFD/ERUY5IQWB/faVMwohjpZScS/W80vTgjC
 0lAlN3/Q4/RgH2mIerMYYoR7EKIakurSrEltaxgdnPPpzSPS7FlgWElxwaNYnYP2sOJs
 qIo+ZrKfZI26iPV840NnsVDgC0DKNm5+uBngJcrDG92FN930DQaAv1onmvWe4Kd9v06n
 SeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yz8Y8j4LrokiV0kHGKvYwP2NDd57XNHFUFDJFy1gO6M=;
 b=k7xpIRTGvHGDk55ckKD7L+V+GPjbYjX5F95hQhCAG3ljdcYxZp8gJM7xHXbZU/GImv
 c3lUL84L3yeV+2nNrQU4FxcdtVfVuXAmId9yqio1/zwRO1gQggjfsCaOx4Mrvjw2Hn4P
 gby+nDIDJCh3iUy0hDGxE8gqTXzCoRS+qimIgZnA4jV/EmfRlD90BdKrrD9FAWNlqNvB
 JkO2iXpiKkj4gr4tBIX9t8fQAQtEiz0V0X3CG4CZx0J4xs+2UqdBtpJM2QvYDjNUV7YX
 h4bsuIDyxISLom6YaHlmGMtmp30SlOiC6UUgbWVvTcDzSzSy1GyKzsqr+sxc6gs67Sm1
 qCzQ==
X-Gm-Message-State: APjAAAVbm3xajO0ZU4PTJ71Z/INQE0dKDHk+xX1P4m2UDmcvL+5r9A6t
 +gcxGZ9EU6jwh7XMazGHHgZiHJENqh8BTsUcwHw=
X-Google-Smtp-Source: APXvYqwMGtpeI+8XdPSNDz1LKzf/YqJGUe9ectHzyz4W3M6PXY5URxGKWcyo6ZNyMSayfoXCbU+EFQIkzQAGe+lFTsk=
X-Received: by 2002:a19:a50b:: with SMTP id o11mr24145346lfe.2.1558380792220; 
 Mon, 20 May 2019 12:33:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190515144210.25596-1-daniel.baluta@nxp.com>
 <20190515144210.25596-2-daniel.baluta@nxp.com>
 <CAOMZO5Avmjf9GpGWBbMJrOxWdvdBTyXMoOPQw_uOQHhCayuHtg@mail.gmail.com>
In-Reply-To: <CAOMZO5Avmjf9GpGWBbMJrOxWdvdBTyXMoOPQw_uOQHhCayuHtg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 20 May 2019 16:33:07 -0300
Message-ID: <CAOMZO5BO7fXFX=qQh29P7Eji7WaAVsjR++BwiyRbkO9EtfNWxg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: imx8mm: Add SAI nodes
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_123314_171203_1216D06F 
X-CRM114-Status: GOOD (  12.71  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, May 16, 2019 at 3:33 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Daniel,
>
> On Wed, May 15, 2019 at 11:42 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
> >
> > i.MX8MM has 5 SAI instances with the following base
> > addresses according to RM.
> >
> > SAI1 base address: 3001_0000h
> > SAI2 base address: 3002_0000h
> > SAI3 base address: 3003_0000h
> > SAI5 base address: 3005_0000h
> > SAI6 base address: 3006_0000h
>
> No SAI4?
>
> I know the RM does not show the SAI4 in the memory map, but the clock
> driver does show a SAI4 clock gate.
>
> So it seems we have a contradiction in the reference manual. Could you
> please double check with the internal folks?

Despite the SAI4 confusion, the current patch correctly describe the
SAI interfaces as per the Reference Manual, so:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
