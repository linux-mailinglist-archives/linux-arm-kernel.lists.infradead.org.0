Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B331A31E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qSjPaXaIRsVCTTxdqgyKCx/OAjCUL+zdyfios7iHRd8=; b=s6V/1ACpBDE11kyAqN+pVIOPX
	GdftWBuI2c/fm/SU+n1Qzej8lYHk7n4eS7BYrzCDsxp+IEI0NS3ht5eXBJ/61+aXLqgd+9SE0H2wj
	WH9qLo2c1ddzezyDoXwdKwW37vCQFxS4rE5NN8bMXnhsDkFpY81wCfsnJ4u+0rMO9gQq4SJGewDv6
	qLwdXmrIDgj360DKP69oy8mHwXz3nGRwEn7mHQ7WWcGPgCSTuEAEoQDcLCQBHDPHAKctM/MmGuJjQ
	803k268JfnMNFjfWnt6VoY5pHLWkmYLc1wGFGpSWQyXt8Mz4LME9bB7YriqRtNM1CxQkjRIBYSLJL
	rq6xhBe1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTbn-0006WA-EM; Thu, 09 Apr 2020 09:36:27 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTbf-0006V6-Nx
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:36:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id k28so7381217lfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 02:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=F1hqxHeKu6Sn0qcjBqnpzejmFgF8FiXlYOaHHEiN1U4=;
 b=r9cnIsxGH9g45TL7ekMdcxZMpShKraueO64GLT6yyMthC56S+z0hvUACligVUNToNY
 jEkYid9BTnN3B5HO4QP/VfE5DGdN0bxdrR8s4OCUvRGYmBeB2Vt7DVMO+L2S4fQs9Mlo
 /bT01v49+1apQOFowKkkbv16nQ/dExTSSHDWSJrSHVo9rPhcVwwBhycU/O84PHNyGiwb
 XChLTMm/zk9pii0YUfIMKe32XG+WA01ZozvSayP2PsvF26YcunRcCwIgRgrrVvC85tBU
 C9PfSfl5ITUvE9euSaNitly9N5M+/zfDLpQsFiaF7BQ9GM7k2/a0kwluucySEMF+2lIe
 JwqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F1hqxHeKu6Sn0qcjBqnpzejmFgF8FiXlYOaHHEiN1U4=;
 b=rmubKNuyiGgSufqKAavGn0P3bBWffeT/L27CAQgQJ6UpgtA/ZDUfFOFA04LKPY7Ky3
 vP3rCzuiI9rMq6Mdvx6icQbyuSWUTC4pUTyOdEYbrJIlc/zZmmbfOLQ2ocOWOJZKKNUv
 J12J5qpCGMue4g+ouvMvP5Wbh3AUILi8uCFBMvcV6S/G3qzKQ1BDJmgf2bVNcv0lsQWC
 X9pxpkjaS6odMbqVOjUORfZS7LRqXLQOKAvE/bC+id+hAErPQwUg1E+UKljq+JNTYO0D
 YrjBjt6iCBcbmB3Z0x1S3fKAyMnfnosEbhNaPJLg7S9TcfKyHGOfK7EAPZNR3M80BS+b
 +odw==
X-Gm-Message-State: AGi0PuZsLgW2NrbL7Y+HTBa5PR1N0zhR3joBHK52doLheXdq3E+ZMekN
 zKVFx5+RGm2TlbLRgqf9pPU1Og==
X-Google-Smtp-Source: APiQypK/OqsgUggpyVaKp/qQ7mjyDy1mfGomhSAWpX/eUf3QmYwoKQnIdpStF6Miir15JkNuk554jA==
X-Received: by 2002:a05:6512:54e:: with SMTP id
 h14mr7301299lfl.56.1586424975925; 
 Thu, 09 Apr 2020 02:36:15 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:429a:a2f1:594e:c9e:26a1:8a11?
 ([2a00:1fa0:429a:a2f1:594e:c9e:26a1:8a11])
 by smtp.gmail.com with ESMTPSA id 125sm14965138lfb.89.2020.04.09.02.36.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 02:36:15 -0700 (PDT)
Subject: Re: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>
References: <1586360280-10956-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <e3f5fa77-f78e-edbf-9efc-53b5ea620460@cogentembedded.com>
Date: Thu, 9 Apr 2020 12:36:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_023619_962007_75B25D4F 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 08.04.2020 18:37, Lad Prabhakar wrote:

> Add R8A774C0 device ID so that this can be used by
> pci_endpoint_test driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>   include/linux/pci_ids.h | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> index 1dfc4e1dcb94..9e957c18abeb 100644
> --- a/include/linux/pci_ids.h
> +++ b/include/linux/pci_ids.h
> @@ -2460,6 +2460,7 @@
>   #define PCI_DEVICE_ID_RENESAS_SH7763	0x0004
>   #define PCI_DEVICE_ID_RENESAS_SH7785	0x0007
>   #define PCI_DEVICE_ID_RENESAS_SH7786	0x0010
> +#define PCI_DEVICE_ID_RENESAS_R8A774C0	0x002d

    We don't add the device IDs in this file, unless used in several places.
Is it?

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
