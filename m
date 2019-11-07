Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1AAF3731
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 19:27:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PXYiscd3aBeiGu9YSwEbEU3LU/8LvDTzslZDM19E1w=; b=LycB/6Unhqjr0o
	82vnu9j/e9PiDJ9xzQ+w2QFzanEbOESFuulEH7C61C9POSAK/wtRHV6Ng8v/I9F1Zl31D62FJfEfp
	ve9lr3bH4myoHT+vzOYfWtor5rreeLp1bM6dRhqCUGznCKsECbNR3ZkIbyBT0R14DszjhkCXyJaVi
	aOf0Fgls/gpLuy+j/c+zKtJp8z4RTSZPjQete2G0V4g3sW0+c2pFp723w3qrBxBJx8r0qup8pMK42
	3kElko318TjOZYipvSGIQRqQZvm+UIpwsvs0YvZViJcIWp3cIHRtgVaVI1fd8vvIuoXGwlSw2+pZs
	KWM9y1dRkIYoQYroa4og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSmVR-0004xs-FS; Thu, 07 Nov 2019 18:27:41 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSmVJ-0004wR-LP
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 18:27:35 +0000
Received: by mail-il1-x143.google.com with SMTP id s5so2721038iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 10:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rd9MmtJg9I99NObgfoHTcrVObiv2Cbuzz8bmb7geaL4=;
 b=RCkNMdzGc1LN3YG+0B6dyUeVDjoayLlIYaA/TR/KKf2ybkTWOvD1B8gHfC0cpiTlZ7
 MC307bK9xpKSFf34KshZo12CllR1OL3R1cVihIZnHVOka2zKUJEKAtywg/Tj+6ARagJb
 cUqp7bI9Ok/XhJAO4ns5ztqpjhDSn8xXgEzlkMwnil5nV1o8L41J8CP4Ej++81A0MhvQ
 DQ6aYdVeFxzQEiCDPQ7/ezGCcF6BEM522HdH/gVCeHAFotAhln6YcX+BRgEJ1Ufd58D4
 AatnXtd7UPS9/XPcPi4+EPVAPdLhmGxuuIlXZQnPLMXllDUQKyAEgB6JHWqW2jNmUPKG
 Gy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rd9MmtJg9I99NObgfoHTcrVObiv2Cbuzz8bmb7geaL4=;
 b=fgoK/XAHwLkBsEqtjcTQ513CBvNBE2Z7w0QR9+k2IrI3C2ZwL0qI+ZmfjcIQzmIfCa
 aKUYLd7nacPt+8eeSg8AVyVnjQ4EHJmLdTRawe4uQoHkzc0v5LLW3ffW6qpVg2apeBVY
 iR8AJifWK4TB/jHXzHL+1NbRjm1GZUCsKMTzr1dmL9ZI/L4q2JSWJQh7k5BDzfKf1R4B
 OGmAG/MYbZd/LbYZkfgqPOhFonhBdeH4Uv5z+58FOA4uK5WMz6HCe7LzFa5BPtl/teNK
 wQUQokH010CqKEvM8zVoZ5ET+9iuWkHSWrjk16XP+6PNhNGFhH8EHRYZxYG+ygJUULhy
 R4+g==
X-Gm-Message-State: APjAAAXMui+yUBUmenJko7unGi5gW14L3RCbCe7qTdyqfvWs99WcAzFB
 9WALnVlqQzVSSLz0usnVsusQcqhQU38F9gFYHBNm8A==
X-Google-Smtp-Source: APXvYqx0c2ixEzl/1P2k8VNqVuu1KNzt7oNq9iie0yTRSLDbulT1QQzNkdoy2JYIN8yiPQWt9b0MdCPxqVncDCDKQ6E=
X-Received: by 2002:a92:8c49:: with SMTP id o70mr6407569ild.72.1573151252255; 
 Thu, 07 Nov 2019 10:27:32 -0800 (PST)
MIME-Version: 1.0
References: <20191107094555.6296b943@canb.auug.org.au>
In-Reply-To: <20191107094555.6296b943@canb.auug.org.au>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 7 Nov 2019 10:27:20 -0800
Message-ID: <CAOesGMjVUCd9bN=pggS-ECjMR42b0SqXKewsp+NYFSVqRgSWrg@mail.gmail.com>
Subject: Re: linux-next: manual merge of the pci tree with the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_102733_730587_3350492E 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Xiaowei Bao <xiaowei.bao@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Fabio Estevam <festevam@gmail.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 2:46 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> Today's linux-next merge of the pci tree got a conflict in:
>
>   arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>
> between commit:
>
>   68e36a429ef5 ("arm64: dts: ls1028a: Move thermal-zone out of SoC")
>
> from the arm-soc tree and commit:
>
>   8d49ebe713ab ("arm64: dts: ls1028a: Add PCIe controller DT nodes")

Bjorn, we ask that driver subsystem maintainers don't pick up DT
changes since it causes conflicts like these.

Is it easy for you to drop this patch, or are we stuck with it?
Ideally it should never have been sent to you in the first place. :(


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
