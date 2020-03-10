Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEA1180606
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fj0hSCzMwiBRS+GJrLD+M5Y0lzM/187ymcoMRfF+prk=; b=eNzywswLLFOrNB
	kbUMlrZ7Le7ughbKiAsy/BsaI9X4gP1cwkoYAejIVC0p53ZPOUDcWyksqwyLnKQ38wzvWwrVa/iGa
	+xqYE3bKWlf+vOrhdyPRSuM09iOt7HuwocOHgqd6FGxGo9247FnZI7aypI6usdfrN2ITbMUzuECEY
	N/kW8OR13eK4F11SCuxSDqNBvrvoiEqCDDvLz+T4fiq+JZl7VGyR920Mz+1xdni85UGn4amPWIVaV
	5X40XZDZRv/PmaA15OMEy69Q2QIdBE1HX2JtSpckhz2cNehcEFq7dlPsgNSesPClvsT/YuT2O197Q
	LhGd/PK+2M0rL7gM8amA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjQE-0005h7-BE; Tue, 10 Mar 2020 18:16:06 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjQ7-0005gL-0E
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:16:00 +0000
Received: by mail-lj1-x241.google.com with SMTP id r7so15275502ljp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 11:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TEnTlL2Y3TqqLrksusrcuBEL+aeZ/EnEGMPZvry1whE=;
 b=FSySuFOOpbwy/dARmhj3sZKbP0ENT2DZ7iw21R7jsHOwlGZPErIaXZ0ikV5ywa5mmE
 yhYrbE/9qD9+0Q8B47gybEcpdwk8SmOibpF5LHnQhk080O+Fkmx22oMwNOm6YHD76VqO
 aAWOZ4pG5vGLS1db0UDjeTECmPV/z+UoygQ3UKtCCe7+GGUbWW+E22GoQzvZNgEy0tc6
 A7eLuom+EvoGH2yyLjG9HN9a71ZzTlV03ni0FZdnshbdOUo+46K4tmp3/lMKxR5qD6Z9
 W4c2wEmw5Ucp18wCRWfBjgctKZZ7sEG/fZDeSMfLRywiGfxs7dlYfRawVhdiz1dYcm3v
 q+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TEnTlL2Y3TqqLrksusrcuBEL+aeZ/EnEGMPZvry1whE=;
 b=U+OJbhHkGkB7D6DEHviwyxR+GCYdt3wWPSSykvTvxSQTVsm9ydNmSXQvLc4OaQLWPz
 XpQTidvMq0DbPVdFuB50KQnEvcrOnltiR8aSmpb+5ml6999Ai0rwgWACvfAdBoauL/GR
 hygfJXLKuuvvMg6oW+5QqT+MuYHEQbgaPAGfQL5SfYz/+6Mng1NJ4geYvsqGs+z6ib/b
 +vgHm4HXl68fsLVjnH1ejn6ph+awjRChxnVvh8UxQ38F5yHtkoyF2DMUOU8hqUYgDtv5
 dqn6B65PRiJG1tVSIwmp1bOGmXN/4yFAmKoHnJeuEQpxoeJf+w/OCOZn3Mtsl1Tx8HXX
 elQw==
X-Gm-Message-State: ANhLgQ2QfDnU33tQ6yyhC0a21fkKMPL8+B87KNIo9UQQTlalWITPq/BQ
 WBYKMpSKVD6pfcUceDDhHInVsssTKlrAahK+fGg=
X-Google-Smtp-Source: ADFU+vu1mAcwXd7c+gzOW+S2is+sCf+dS8bi5PaZTX1tMdbXEvl6XwAosKG2tRdA7SmfrFf8OVEIZe6jmOuUyZVozZo=
X-Received: by 2002:a2e:86d0:: with SMTP id n16mr13155833ljj.117.1583864153614; 
 Tue, 10 Mar 2020 11:15:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200224193200.2773-1-festevam@gmail.com>
 <20200224193200.2773-3-festevam@gmail.com>
 <20200310143656.GB21213@dragon>
In-Reply-To: <20200310143656.GB21213@dragon>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2020 15:15:44 -0300
Message-ID: <CAOMZO5DWbyUwFq3xhbMY4T4n_MODgPiBTMOLxXwrpAAMgRtH+A@mail.gmail.com>
Subject: Re: [PATCH 3/6] ARM: dts: imx6ul-pico-hobbit: Add ADC support
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_111559_077309_F2257402 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh+dt@kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Tue, Mar 10, 2020 at 11:37 AM Shawn Guo <shawnguo@kernel.org> wrote:

> > +     adc081c: adc@50 {
>
> Sort the node in unit-address.

I have just realized that this patch is not needed as the ADC node is
already present.

I addressed your comments and sent a v2.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
