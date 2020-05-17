Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E37481D67D9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 13:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U66mLfDBtbaDTvszwDhcQYOM5dhgh1TcIREGsoUj6sA=; b=TVdo4Ny/wXrTy0
	NdBhIlrXm0q6bpP/dnHw5v8lxoC51ykXc/W9bE+TtytxHreaJ/O0tlfNb63JrLTnw4r3j/iCeIaw6
	SVpcWN+C2y3yGt0LCqoibX5BpkJdecz/ZRY+Unk+bBjaxpD2SSYdcJ5ZAOelrJifc+63nKT5RNqh0
	rtltEjCvF/IAaFYDH1JDYBnw4dKIa64sBLfg0vOT2AZ8ELNAYFVkeb9E7G9mvYzhpMpr+BhO3pBmq
	CJjZrVCH42deBmdxqhAG/NHsZ/sAbZ0CEwk3zngJkcGWB9qrmMvfjXrppjjvrdbixojzya3khgxsC
	SL84/mR1NpqmTpAqNr2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaHul-0001Il-9m; Sun, 17 May 2020 11:57:07 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaHub-0001IB-V0; Sun, 17 May 2020 11:56:59 +0000
Received: by mail-ej1-x641.google.com with SMTP id j21so1725288ejy.1;
 Sun, 17 May 2020 04:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n2zu9JqKU5bD9sWT2p4LZR3ZmrdpAMY3DJ+tw0eadKI=;
 b=QfoWxHBpfNJW5n5jO+SfP+ueYUTnzn93yioe/AsSefpOShVmtxDv3cL/k+BYJzZjj4
 loieYc/Q/FcRVoUHHeotMND7sImOYHIoviE3FL8yIzu4US/1bHhoOcZP+2pgzt5J4EsO
 Rqc9UsDZ74x5UX8eXAVrtFiiXy35g0V6+tD7S4CyXim+O5+la6H+e6hTeyZeThhIu/Ft
 V+D/hkxsUR/Pt79mjclETYLMGe9a4fUWw+uuQyHCclwnP6/+mtDinfpBpAXtab5pJ/vc
 mYyaZxirHk5YTr8deDgu2Rge972T3kys/KPxmQLvoBKAKDwPtJPI6EhkgabNln8mEx+1
 lEFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n2zu9JqKU5bD9sWT2p4LZR3ZmrdpAMY3DJ+tw0eadKI=;
 b=UVamX1kLJgmhJnO/UGRCm03sU6t8CZbiIDLKYyCr0Pk73WSwaAqICPUTUSYwKysRst
 wjulC/WB8OQahK5x3fbK94TSBLA0ZpDZgyIZAetFcnAN0zMF8NGRBeEEDp/0v5v+f3z6
 bJSKRI2Zx4rMfzEtxHBdU3HH5ZCIVAo/6RdhADA8wAwmQvcZOXJLBHQHfc1oz20CYQkl
 iTJ5dGiniyUQH3u5A7Jk+yze5xMJyqCwOQCRwj6ZtBrOeE+kQEnBKsbZcJ3uBSlz/ZV2
 cZCAvONcup7OqqnwtCdpZph8Z+qQKY0InD3k2y1jlxb7984VtlWVul7RWq+VStFcKDHs
 8MLw==
X-Gm-Message-State: AOAM532Mw1hUiQEdNexAJitEEtK/3TlahTuqvZz78Ay92PnbwoUTVJOi
 wO95reJ5AX4mldQ/e/8Jb8/csTUrNIxTueITgXs=
X-Google-Smtp-Source: ABdhPJzZ/QScx0gQ2p297ajwfhl1LwTq7Gispx4C00yR1Em6K9vahsl5Aaq2FRtkVMhA4PtTiZTacouGjS+1fUspoqA=
X-Received: by 2002:a17:906:d8c1:: with SMTP id
 re1mr11417735ejb.184.1589716614442; 
 Sun, 17 May 2020 04:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-9-git-send-email-amittomer25@gmail.com>
 <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
In-Reply-To: <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Sun, 17 May 2020 17:26:17 +0530
Message-ID: <CABHD4K9yjUGuo0w-RfhdZQJm3Wtj6bU2H4DXcp4Jjp=e0fFeyA@mail.gmail.com>
Subject: Re: [PATCH v1 8/9] arm64: dts: actions: Add MMC controller support
 for S700
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_045658_016805_F0358823 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, Rob Herring <robh+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> So, using "actions,s700-mmc", "actions,owl-mmc" here, adding this combo
> to the binding, but leaving the driver alone for now.

But if we leave this new string from driver , there would be DT
validation issue.
Are we okay with it ?

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
