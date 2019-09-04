Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C6CA85D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KssTizdfUR2DHEJWbHPJLezGjtA13UANL5kvW0rYSE=; b=cHd47kZBmIRuXe
	G5Fpyg5N5xRNyhPcfruN3N3zsTIwnsVQ1ZulRAMdU7VJ99qaJB7333+VDSl7yv2kflFxOOcNgznLm
	BjJvmR2XqIxBvwuCmfI0N/IfIQBj4am8UDh7iXtsl1LAZTfbDDOvwb7yPzFb2EUDh7WZB9mYaH5ZM
	zAnK9wTSZ/5XB4CKxHz11GRg8MmMDVLp1FZez3xHVgKck6COM2VMNemxc8QcwtfPckjs8eDqLTkA8
	TGbxCKRIXOVXUqHer9jF5vx90J7L9IVsD5/y9Fgk6D07e8Sd43vVauNSn/+E2M46qSdw1kRkajEEt
	VsqH9cebXSaTC9RZEPbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Wn3-0003rK-Kh; Wed, 04 Sep 2019 15:01:45 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Wlw-0003nN-D1
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:00:38 +0000
Received: by mail-qt1-f196.google.com with SMTP id r5so19486008qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:00:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BrZmXuHo4AF0UcOLw8/NF0lCnpsHtln47XiOQdt4A7A=;
 b=B3kR7N50/bxUTOA25f1b3ItO2aU9/zlizLub05WkWYGsY5ZRSxfXaD75vgssAgOcYD
 ATD6/GH2aB5KAEL8wes9+lMG6Hpv6TS/g1Ang93fPLvABX7YCl+kKFiclHx8tnMcAjFK
 ylpSsJO+R0NkmlWLHA3Wrr2PrTX+89jMPMiQwg444kxHazFHaFgoSH1rulWxTfxDkMIz
 0yCWKwVVi79rIEZzsGLzCJTV4RSkYSJ6pX5uLUSbxR95raSfbXvVY5go9rozH0UOtir/
 Ov7coeGu+d1whoWZYzxozDmQ4GZOjoiRRaZsHeDU9wrTUvQMMcyeaDtp/Mp5Dq68uzeb
 FPNA==
X-Gm-Message-State: APjAAAWBZIgdFcoK9fSD4GVZHMiHkVWL5tgvgxHI2zyV8ujEpHhcvrfc
 g/no4srmi+EHqYyFySb62bXo1zeAAfZ0GkxLg6s=
X-Google-Smtp-Source: APXvYqx+15fewnibAIDQDgcL+c1CXYo+KUDNM90MF7Hm9nDdl9Rr2/5xG8FrS5RJlDFDgCuH+9s6NNzv7u1e/0lxqP4=
X-Received: by 2002:aed:2842:: with SMTP id r60mr30145389qtd.142.1567609235063; 
 Wed, 04 Sep 2019 08:00:35 -0700 (PDT)
MIME-Version: 1.0
References: <1567317285-8555-1-git-send-email-agross@kernel.org>
In-Reply-To: <1567317285-8555-1-git-send-email-agross@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:00:18 +0200
Message-ID: <CAK8P3a2YW-kod3wEAr3WB+1vfq99KiBnU+mEBBypu_mokYRr3w@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.4
To: Andy Gross <agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_080036_646357_25EC6CB7 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 arm-soc <arm@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 1, 2019 at 7:54 AM Andy Gross <agross@kernel.org> wrote:
> Qualcomm ARM64 Based defconfig Updates for v5.4
>
> * Enable Qualcomm MSM8916 clock drivers
> * Add DRM_MSM to ARCH_QCOM defconfigs
> * Enable Qualcomm SM8150 clock and pinctrl drivers

Pulled into arm/defconfig.

Please remember to send pull requests to soc@kernel.org to have them
linked in the patchwork instance at
https://patchwork.kernel.org/project/linux-soc/list/

Thanks,

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
