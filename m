Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAA31C2D19
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 16:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnKLs+2eHrxRU7b4r8DvHR3HomFyPBlgRhtgM45IF2w=; b=TY4PbWS1H0FGnR
	g59+v4kP3pO0KOLxUtBpHEAHLk03IO7GPqUe8MOVHlHKL2uNNpN/80FNbU8g3/p7/fyww5r4m9Bwl
	Cgd15iDZ0T/4bl73EG3ZTEvNCF1a6oq7hXsTFp95FejmIdGgghZTWxdnrjrzcFjcJcDZABZTgqiIb
	Is/DMT9TuPvm9kIjeLOwxYOt5/tq8YAyefKJF20RYshTj7h6D0VB382aDFACRYabe76wqyXo4cMrN
	ksZGSc6MFtWb6DJ06XaxED3kzyhvs56l/OqzWkUyIaaXOhHT15LArdZlNLvBQScMC4NGhKtZW7IId
	dqQtucx9xG7gk/MCC/ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVFwd-0003Hg-1M; Sun, 03 May 2020 14:50:15 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVFwT-0001jd-9G
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 14:50:07 +0000
Received: by mail-io1-xd42.google.com with SMTP id y26so9699318ioj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 07:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B1Ggi2tOtn6fWjPzvZwzQsgJOov1/FsKi8Om8sDMRcA=;
 b=HxvGAhT9OTNgDUFLYzZZRcoKMfhGjPBshUnyOSIlMXSNcv9h4/Oz/o13+7VqT8UxVr
 GLfT479WXZaLdb87jHp9szW1ydM+olqSwgfBXwJ/1wmNMXmE0eBqXLRAO4FvulgdYqmW
 OqykNoHblX1DfvOOlq1bWLPODvfKm6n0lvVq5BSgvedpNbZ5xaGzPHcNW/2sEUN26Mtt
 vGNHfaV62vuJTeeqDlXRNnLOMKS0dsoNIiO4FxiI6Uy+y5A6x/8Hx5JZWzTdryi0MqLC
 6EEGCwRbLB1XNl4ntFaKq2KatDVLf0NPst2/NeJErdUgW4GqlCVe6u01dG5Jh5Xxt0yp
 GcuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B1Ggi2tOtn6fWjPzvZwzQsgJOov1/FsKi8Om8sDMRcA=;
 b=pzhHfD+vPGuAMXWsV9QZYhpg750CXJkb3JL85dKmI/NE3JEFmY+tqqF9EJMxcV4qAh
 O1uAjxTPLkB2pGdIiFJX/QclFrlokKdDnzxCQMEUSe8Bt3hwgYWkz8DAuId9O0cAqa2O
 5he8UON6l/sW9rxRSUZYw9cgGy6lfBD0tGPhhIIvqD0K72cLYeuffNFd20JkQwSoXza5
 1B0vpk7NuwvH/VvtUSsxPqFMZ5JAbstereId06YL6xE7km6dTtzxbrf4/L3MviC4vWgm
 JDe9455W74xeiXSBT6o0WvxN52oWwygpxbFw5uzkRxozBAbHysF+S7f0m7xfIpFT8f/t
 LZFQ==
X-Gm-Message-State: AGi0PuZEVSe8CyDvgs64L5tntNOrQ3YkXi6x847sDRExTu5Lg3PZyaSu
 dJPFq5aIYLYATBDxtxPLliebjIzg5VUok09jtw0=
X-Google-Smtp-Source: APiQypLbcKgX3zhmAur79Vn+sc0A1kneTzi/1Vo1IHxvDZMcqShXBChBJ4soO8y6+dAipoLOjkTP4D38bcG/hwiWprc=
X-Received: by 2002:a6b:dd16:: with SMTP id f22mr11782741ioc.178.1588517401325; 
 Sun, 03 May 2020 07:50:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-5-frieder.schrempf@kontron.de>
In-Reply-To: <20200430124602.14463-5-frieder.schrempf@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 3 May 2020 09:49:50 -0500
Message-ID: <CAHCN7xJ=srZxygtG6hW_+us=qH1heY-k=EosavYH9tDk-KG0Bw@mail.gmail.com>
Subject: Re: [RFC PATCH 4/4] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D
 core using Etnaviv
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_075005_334630_70CE1DF3 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 7:46 AM Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>
> According to the documents, the i.MX8M-Mini features a GC320 and a
> GCNanoUltra GPU core. Etnaviv detects them as:
>
>         etnaviv-gpu 38000000.gpu: model: GC600, revision: 4653
>         etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
>
> This seems to work fine more or less without any changes to the HWDB,
> which still might be needed in the future to correct some features,
> etc.
>
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
Since not everyone uses the 3D or 2D, would it make sense to mark them
as disabled by default and let people who need the 3D and 2D enable
them at their respective board files?

adam

> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
