Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA70C20EC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uU11MkF5JED8NRFvuQGk0P/Gm3qOGFfZ+W4JO4T4ioc=; b=d428jqr3YXtva5
	vM3kQOGvzNEIjz1yeMuKeIi/D5SfNPUgYL6/h79h4mY1v/m5gl1b0tNmYFTJlnUJW96CWnjPY8YNb
	JmjLywjfGJPDBVtPSR0tqfaGoyLAAUEYJJM+liAYaphgKM/pRkg/ft7a/liNXk4AjqkcSdtzXm8Dv
	O8uMUy7X2tLdu1O28xBS95mDv9hgpCRiIe0zWPcZJL91YHi3kzIRIvr2SCnMlHEY1I3VIf2ghOF9H
	97g3JZCtDJ+dWx3qMujQKFr84cp7l6pIuj+LtsFnkXp4zSN8FLkaCKfa09oU3YTurt7ZgeniyWVPP
	vBhXPqPrWEiIPkJ4Futg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLE2-0007rY-5r; Thu, 16 May 2019 18:35:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLDq-0007qA-Ks
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:35:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id q17so3428735lfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 11:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+idWcmjPST3Hl3czuPFrU6/6AI2HPcejFwVYPK17aPc=;
 b=k23/dPqHAR3dXP7Nj8FpaKzc5p6ZT7V2uAVK19Zd4XHc2cIezlyg7qupevZjFs19Wi
 lgElBoQUKnWDDb1Shm4aylkFJiBVCxa3ai79L1sv5oHRagmXUnAckeuNn+6+TMvPWWYS
 xc5z8qaVXJsy1ZT/svee0CRUGvYVI4Li0PakbgOVC2hQkypL1Xre1n0CNswYXkUTjg5T
 T9mGXMLpCHK3o0OJrOFDlORL+om+R4ww5oxNkNN1hidCgMMOjpJz6OVcLvhP2ttDcSg8
 eEcBKmZ71eZ3zdD0Yz0+DtkYyAGPVj8JvJUMHftIpb2EAQE76/Wguyc3Ktxw/CAeQVTd
 Z3tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+idWcmjPST3Hl3czuPFrU6/6AI2HPcejFwVYPK17aPc=;
 b=BJ/YgdsSnsvQfdLGMbr5CFJdNEhkscMpVbPOiXxyZ8OspmpN0TMKf2BQ5OI64XoLpC
 6Bkt5upBrNFGppCN7jVt5eIzYKdoRtOC6E4NKtIa8sBizy9dDucWk1vpbgKukFG5JXT9
 P22CUp+ovEy3gjtgcNPFQKssaQzue6Gqmra1LW3zp3qZN/umvw8x9BWQd3NLAg1IHWdO
 T0ysOuWJsBB4f1FiKUhr7gGCpxd1tRD7iNV24hDa2a/NCXmizp+SBE0z46rRcuY1TwWR
 rQygIocs6x+Sq0NQr06riRNvDA4ThsfWVEXLipcHXcT+cgbCic2yUOfjlnuRpmBLFR8z
 uCaQ==
X-Gm-Message-State: APjAAAVMAIt0mvZIAjoLri8f8yI+AJm4b/2u5TCOfeq7nl/dmmllCWgI
 1lhlcwcOjiw+GNAkzxy/qFVm+CwD8HtGRSPyUQg=
X-Google-Smtp-Source: APXvYqz/Sid4tmtq5GFJTviFYQ/KFKX7b/x5MgwIHDmCFilPniFlpoSr6HISlpCPi0Da7K8HcAQ2SWuZWgFFg08Qh3M=
X-Received: by 2002:a19:e34c:: with SMTP id c12mr3562928lfk.145.1558031716748; 
 Thu, 16 May 2019 11:35:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190515144210.25596-1-daniel.baluta@nxp.com>
 <20190515144210.25596-3-daniel.baluta@nxp.com>
In-Reply-To: <20190515144210.25596-3-daniel.baluta@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 16 May 2019 15:35:06 -0300
Message-ID: <CAOMZO5A6Gv5k3up0AtKrhQPyMLMe_8SXift68KEP2J+j8D_cJg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: imx8mm-evk: Enable audio codec wm8524
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_113520_345064_C7C927C7 
X-CRM114-Status: UNSURE (   8.98  )
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

On Wed, May 15, 2019 at 11:42 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:

> +               simple-audio-card,codec {
> +                       sound-dai = <&wm8524>;
> +                       clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;

IMX8MM_CLK_SAI3_ROOT is the internal clock that drives the SAI3
interface, not an external clock that feeds the codec.

It seems you should remove this 'clocks' entry.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
