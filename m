Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD99116FF3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 13:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eMpUioEJ/jo6mYndyJ8pcEELBVTcOvemdlkywLQyWI=; b=RIB2rxRJuKXrNr
	gnGH/03t8vTEqNNyqofPfVdkMMaya1XN1RLsJv5Vo46BMqikGkAfVOnEw0vuq74W6i6LYm/vcPEdk
	615RqcP5HA0ocMSDlugy6pc41irUKe/kfGHt5zIrJFdTB/KMm4Pvy5EuUxeMrZ8fnLutX9EZixUPN
	B7scLUcwxr3QwGwEZy5mmDDQUouvFB6/jWyJ4/6iUFDLTZ6IGeN9iiaR9kzvd5L6frT3I1xf5mmLB
	oj+jHeapTX0+45tAIsnKu6CXlq6B78dOUlU6jB7u47fUFGNEZ2HguV/M1r8DRRERQr+gqsMBdi9o6
	zL0Zy/85/OilIFfCYYaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6w50-0003cb-1Q; Wed, 26 Feb 2020 12:46:22 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6w4r-0003c3-SK
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 12:46:15 +0000
Received: by mail-lj1-x241.google.com with SMTP id h23so2934584ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 04:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qgJPSpfwkB4wpHwVPaSt8tJmm/cC07E5aTtE/ZGtNew=;
 b=hJAIwt3XqcA6vdQYlW5DN1YmEqE1lXwSUL3D9lMIL4oTQ7g/Q+sMxozuu5BCwAIyXC
 fhi9rbfJsXmquyo1vwBRXfm2gwf/M0mMzhFe9uO/CFpITOf4artAjfPx4sbGj4W8hleM
 MJ48U6K3xxgtdkGcRBgifFExebZTmpC4sEy+2rWNtahDhyvJWx2JR8ckHSASBcef/fdi
 yvlAoM6IgumqA7T1upMmzuC5zMxU/5VCAfVYp0MCElHeH5VHFbBh1ogjysPJtu8WqhRK
 OOfuAwOnM7TWmV2/O6u/dLAw6LWaGj487oyJyQ/JJM8kRHSeqPQCVVO/qo8qgUtmr8Ga
 2jNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qgJPSpfwkB4wpHwVPaSt8tJmm/cC07E5aTtE/ZGtNew=;
 b=unEFNuZsSxKPiEHAB3P6ggX/ZkfqHpERWDXL8nAcPePxl1oa/ePvYXO6iZo4i1bVRx
 n1Za/Y4kWdOj08admdiuIJP/RYpeVmV/J6njZypBWN0CCNlbtuFzLxEAjecpaetpRzg5
 +nYsk+FhLVBcY/+htPi8BYgGGZs5DPHR5Kdyi6u7GW7CgcccRnRk31AXR6fQsbhtKHnC
 XF/aqT+TkCGyP5C8xJY/yKBYK+ixbpWIdxW8AUTmVnITZb9rjPgDLeIcHNmfOq2m7Kql
 1il9ehOdLQyV4AmVNM8e6mpma2eFsIjkT96rB15sW4BCNd8GQDQKMb4GVcZiyGJGuxPH
 i9Og==
X-Gm-Message-State: APjAAAU48EGaqdYYNEXTMtaOkxXn7xvqDtgBcB6t43rf64ti1Xef7qg6
 939LdbUqZYbROCWXfXuz+q8Qw193tC4rgyCUbWE=
X-Google-Smtp-Source: APXvYqzaHbc9A2c9xE2edfnUWxJTjRVKLCIJGvlkTyklIyTN06zsZhz4ISWpDA1VVtf7NNjiq/hDCBcwaUp3aSzRtyE=
X-Received: by 2002:a2e:2e11:: with SMTP id u17mr2865444lju.117.1582721172264; 
 Wed, 26 Feb 2020 04:46:12 -0800 (PST)
MIME-Version: 1.0
References: <20200224062917.4895-1-martin.kepplinger@puri.sm>
 <20200224062917.4895-5-martin.kepplinger@puri.sm>
In-Reply-To: <20200224062917.4895-5-martin.kepplinger@puri.sm>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 26 Feb 2020 09:46:01 -0300
Message-ID: <CAOMZO5DV9JY=7Vg3RL_T4W_8yb1DnLThmS_LWM45uWAAgeXwQA@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] arm64: dts: librem5-devkit: add a vbus supply to
 usb0
To: Martin Kepplinger <martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_044613_944118_B8A957CC 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 kernel@puri.sm, Yongcai Huang <Anson.Huang@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Mon, Feb 24, 2020 at 3:31 AM Martin Kepplinger
<martin.kepplinger@puri.sm> wrote:
>
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
>
> Without a VBUS supply the dwc3 driver won't go into otg mode.

Since this is a bug fix, it would be better to put it as the first
patch of the series, with a Fixes tag and Cc stable, so that it could
be backported to stable trees.

Please rearrange the series and put all bug fixes first with Fixes tag
and Cc stable.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
