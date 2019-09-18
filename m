Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7010DB65EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkmvouRHy6/Md00fZVyUe6D/cCBJ78DdK6uoDXxmsp8=; b=pzkjEu3vg3Jn3z
	jK13iAmVbZ4FxaXm4QNPR/9WPK8g1j5nT2duFhK88mGfg0SVYmx3K2ggvToi+0xdUewOw7a9AOzGd
	QSZOydm5/gsKVzdaiIC1jC86b3W/YU/pRi9iipwRPFYa213OAg2GRLX7jjKmBO/zau/pCyq4IPrD4
	YgykTefef5sZS81KWeaIkHzDkXRbmojqR82HH7uHq6nDJKYYYAL1BGTNZ3eBgxFxSWwwj6co5W4Lh
	dVD6Y/Z+27kjwhOSAngNPUxCLskHiDlI8Oky2Y3o+dnk0OQ3O0xcYaAzyRCRH4576HDobCe+/n5t5
	xak+MFPe00j3tmhEOSuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAarZ-0007tf-SF; Wed, 18 Sep 2019 14:23:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAarK-0007sf-D8
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:23:09 +0000
Received: by mail-io1-xd43.google.com with SMTP id k5so16585891iol.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 07:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8hOkftNxCx/aWELaDJaTVsr1hHwRKS/6DkQyi3nkXNo=;
 b=tiaefsAejMqIgoXecf2HVZ6uIEzJD89WgVfxPiUxd2wHa6nLzUze9o9GVpjummntml
 7WwLZ0MXTA59q4jDtNtRrYrkAdCLRVZ7nfYDR58y4svtOoPHkCSLbXxcbMkyCtErkmIM
 9gCBiErpQ8rA/lOYi6jn6wu0tl86UdRkk8Fjaxyw97vvX2IbE/bIqTs+43mniCCVwgd+
 QDgVKIeAchxQSDqjl8U6m2m7i4mRywfVhQtu6dcanIX09OKAWLNWNlIdwhJ1n/DJ9fmM
 MlLOjQwo40B4150GKMdJgMsYej5F+af/4uNUWja8Nd9FAsf9r+cuTOBrXeABpjfrgzue
 LKqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8hOkftNxCx/aWELaDJaTVsr1hHwRKS/6DkQyi3nkXNo=;
 b=HwvF/LLIqHCFfPsvuNEbOlarW7ihr9tCOlekKy3Hpcim/I+Ij9k8pW9sv0lvbTnEkP
 qkDmQmPiEoLE0YlSwbUCTvIHkwm+O8vM0Yr+d5GPmSoyJNya0Ak4dEIfeEeuiDjYPFa+
 Mq2Ft5VWtUqyakF94eYUb+/xtZNgUdO0fpbPVFTPXTJ+Wgkhej0pnbEIoD6tuZQXvVPd
 ggYPswAVYI8FYKVoFi2bAAmvkTxEpyVhFxwr9tMJXu/zglrCNeykidcHLefNGUwSzlUH
 wRY/9H5r38W3YEcRCR8E9HIOv/b6LAXVXsqUhw3hpkRjTWFBV33MfJYfBes/he+blDro
 YhNg==
X-Gm-Message-State: APjAAAU0La/IGhipfih9gY7+jiai3+lludL9MWXiQJXe5vTGNOiUoLCJ
 lxY3JjZRBmPojaVEZPhL6WatIYEjbM31k5k9NEk=
X-Google-Smtp-Source: APXvYqxiBAlP+n9Q7FILgic2xGszsDwFKNDSkihvLtOowMxpoCcjP8dfA+h9rXTnJorshM46ixQcptHHt7Al/USCw3Y=
X-Received: by 2002:a5d:8a0f:: with SMTP id w15mr5572006iod.239.1568816585433; 
 Wed, 18 Sep 2019 07:23:05 -0700 (PDT)
MIME-Version: 1.0
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-3-git-send-email-peng.fan@nxp.com>
 <20190917183856.2342beed@donnerap.cambridge.arm.com>
 <AM0PR04MB44813D62FF7E6762BB17460E888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190918110037.4edefb2f@donnerap.cambridge.arm.com>
 <CABb+yY2G8s9gV8Pu+f__8-bubjCJsVQrQikbVMZXmpTwSMBxiQ@mail.gmail.com>
 <20190918145832.0bb72e16@donnerap.cambridge.arm.com>
In-Reply-To: <20190918145832.0bb72e16@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 18 Sep 2019 09:22:54 -0500
Message-ID: <CABb+yY3irsE0U-bex4G60Lwpewea6=pE1vSzi72Z+5DafmC8Xg@mail.gmail.com>
Subject: Re: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_072308_685726_75E5B96A 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 8:58 AM Andre Przywara <andre.przywara@arm.com> wrote:
>

> > > Also there is mbox_chan_txdone() with which a controller driver can signal TX completion explicitly.
> > >
> > No. Controller can use that only if it has specified txdone_irq, which
> > is not the case here.
>
> I see. So does the framework handle the case where both txdone_poll and txdone_irq are false?
>
Of course. If there is no IRQ or POLL mechanism for controller to
detect tx-done, the only way left is for client driver to know by some
'ack' response (if any). The client should call mbox_client_txdone()

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
