Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823262ACDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 03:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWfx2nB1hl8Mytgkg1GmqesgglO7fQNaNOED1Q1cPE8=; b=qc1dAabscMbnAU
	UNZ6t6iOMOmWFhFHXfY1AqOu+TyN4UHBkw/GXacXGFNd0vX4E08NnubzR3swh/DjpqR2fpWnDyQrl
	tpzNJoIIyPEWk9lZsAZ+E7ZMYJQInBYNlaAbRYWniiVyLY5mCgHM+8LOAk9uAU1jFbdNEMCJT2Gun
	oVO9u8zMN6xrTGuqjKS6FMqI2Nt1cNu1Ojou/DdA6XThxTFt9Gv/vZSLKb5+6qJUqnRHEPf9H4wKM
	8MrctBgQBWyPBODuMER8FuYxa8ZVB5ub9f2g5t8rg+GwO6M9hTFPfGDaY1fvrqFnhuHzal1AJoePe
	h+ik05PZEkMW/HDLD3Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV4s3-0004Vg-OW; Mon, 27 May 2019 01:56:15 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV4rw-0004Uu-Do
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 01:56:09 +0000
Received: by mail-it1-x144.google.com with SMTP id m3so24577607itl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 18:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4riq5WOrC6jxJv+1e3ONXH5F0cl4unP+M0sgitUBG8A=;
 b=F7B66fV4prSwIRfZawcHCapEbxTOWBuNBaZCIQ6EKpn3pkjpnaU2czUylmkzXzlmxZ
 HmxRo+aD2j2gvXclYMexnD6hwOLonFPwXDUH+/IixOYGch84mgAAXREsk4msNRwi/h9I
 HCo090HtDhVHdNDV5Qn6jyyoBpUpTpA49nns51My6WExajf8nG2B+OXvnDSHQTIeyYHS
 kMpRa18MeLr/EZzs67xhiPD7irU1MA6t6Ulk+YtnhVTm273ovhoACo8b/JD4VfFbxmRH
 qML6YVc+FTxO2IyD1fWKmkOYXNA3ce5AlwQwyvAnX6ebUtz9iwyHKBLp8bkaC0/wVE0r
 jygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4riq5WOrC6jxJv+1e3ONXH5F0cl4unP+M0sgitUBG8A=;
 b=OsbaxYPYjte7LHsq5OY7fqRXueJUuOXJBywm5697kEbszEEGfipoHR+lSB8sKrPG3X
 rG4lO0Wpt3bo3adZHoqe39ycrNfo7MoagwsibMvJxSaV2lrJM8F1h/pr4rgy6HamXT8B
 Qu7wxDYjFDDhJBo+Q9ze987AZpoloU4AhGO0qvdOJFpVM41ZwBpXslAFAj3bByYnJhA+
 bapHnj9QIESxRycF3s7B6yLcrnFjHxaoeuPkRXuFBll3SO2MbuhfRM0MEsBjwvLfjhyW
 XmlYqKOYuc0Im+OBtnMnMttbn0noS5XndjQvu9k04s2JHLPo8kYnCEsKB9t8JlF3LZNJ
 Ag9A==
X-Gm-Message-State: APjAAAWFUfzWyeeG5OrQ/QMj1TQqlBj17y9Vhyi5cnGJfPNca7FMmCyH
 1BRWm6PbIgDdVzo4Gav8i7wXibwd9/TojQokRzk=
X-Google-Smtp-Source: APXvYqywHGWRgscHD3wttrQTCBgSjiAHfAChFkGelESVt8gY5T7nllpYfOpg60tGtOEJ4v9Y/l/47i8eo83/eIeSbt8=
X-Received: by 2002:a02:7420:: with SMTP id o32mr7347087jac.117.1558922166931; 
 Sun, 26 May 2019 18:56:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190523060437.11059-1-peng.fan@nxp.com>
In-Reply-To: <20190523060437.11059-1-peng.fan@nxp.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 26 May 2019 20:55:55 -0500
Message-ID: <CABb+yY0r-njq2OGVP9xAh=-wgib5zk8XbS-vdY1jtz2R=rT4Nw@mail.gmail.com>
Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_185608_543344_EF7C598C 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 12:50 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> This is a modified version from Andre Przywara's patch series
> https://lore.kernel.org/patchwork/cover/812997/.
>
Can you please specify exact modifications on top of Andre's last
submission? As in "Changes since v1: ...."

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
