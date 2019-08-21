Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36659845C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 21:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaKF3pqGorNiZaxWlAM5qXaygcbRMHD77u8ERVwJdbU=; b=O5CjVtTRG3AesH
	J6HLw4kJ8GllefZ78X8x/34GBhc7vsxVbPK7nncIzBIonrAiCmc1n0AUgzDZakMDNIqv7y+lsBtrM
	SAwlvL6RvRsqILU/0DwN1egcctOUhxYaMZuc9Atviw4IMkj1HrrLm+fjTf9H0CO/xCKf7rQg8pbz2
	/aMOBF2/c35AIBjucltoE6AitD0HccXKlGTatxG5pcFXiMWM1HeyIZq/McNbyl0ZB4grGeKTeOssd
	p/w1fq/DaWfONFhJWbKI4Pcr2+/Wp5h/z0gdx6vcTGSkcq8A39XxqdFuhdgZWgpbEqmdg+e3uWT4g
	rjs9P0TYvyeCTtBHBdzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0WG0-0005Ku-P6; Wed, 21 Aug 2019 19:26:56 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0WFs-0005K8-MH
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 19:26:49 +0000
Received: by mail-ot1-f67.google.com with SMTP id q20so3185627otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 12:26:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=10waZ0/ZkKGq42Av7UyfIsQLjaV5XyZlPq4+UDb3efY=;
 b=BA0joRYRBcrZoa5QZWKW/9D3eY6z1VmzynXlspbQoCLhTT6+hXEJG9DNtsJmrdgoNR
 mniNqTy6dq6sAAA2+26TjrCUukuyVwjQ4pcYcHU3mmkS/8/iAxW05a3WTm2kSmEgjPFH
 kAFxKnO80CC725Rh2syPyGYip6huyjYp59YuulFCPbpyXgPGznrznj+CM9gO5RDB215T
 K6SixUrqKFHWNVNJdRIkfZTNuSVg+3TQIXDCVAzCjL2ip9pBUCuI108Hb7aL15eeNNHp
 HAZ5KWcOb2a0xjgMZZXYxlbA/B893EK4RwvCQQizBjrQ9596emoPQ2UJ4CPnSa8wkvDs
 8u9g==
X-Gm-Message-State: APjAAAXHaOL/kshPBilsCJTMzNAkE/sAnym4Qmbgh6Fjg2izduc8cxgi
 EiUCS+dZaYkUeqcD9nDd7g==
X-Google-Smtp-Source: APXvYqxLs6MFhoQAEH6ogwkzbZqevbuPU9pesTaxbtwOpkRdDuv+cpoUh2/qMzsEYRLg7/dteh3tjg==
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr1554439oto.193.1566415606656; 
 Wed, 21 Aug 2019 12:26:46 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z16sm3139424oic.10.2019.08.21.12.26.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 12:26:46 -0700 (PDT)
Date: Wed, 21 Aug 2019 14:26:45 -0500
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCHv3 1/3] dt-bindings: pci: layerscape-pci: add compatible
 strings "fsl,ls1028a-pcie"
Message-ID: <20190821192645.GA22618@bogus>
References: <20190806061553.19934-1-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806061553.19934-1-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_122648_732166_6F0CFFAA 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, kstewart@linuxfoundation.org,
 linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, minghuan.Lian@nxp.com,
 shawnguo@kernel.org, lorenzo.pieralisi@arm.com, kishon@ti.com,
 mingkai.hu@nxp.com, devicetree@vger.kernel.org, arnd@arndb.de,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, robh+dt@kernel.org, bhelgaas@google.com,
 linux-arm-kernel@lists.infradead.org, roy.zang@nxp.com,
 Xiaowei Bao <xiaowei.bao@nxp.com>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, pombredanne@nexb.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  6 Aug 2019 14:15:51 +0800, Xiaowei Bao wrote:
> Add the PCIe compatible string for LS1028A
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> v2:
>  - no change.
> v3:
>  - no change.
> 
>  Documentation/devicetree/bindings/pci/layerscape-pci.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
