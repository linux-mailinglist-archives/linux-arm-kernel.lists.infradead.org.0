Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6C54EC6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdHFiq8+FTmy7oRNxvfpaiTi6fNsK/8yV/p6yi1WlwY=; b=ZrjBI6mssURnzz
	0BVSfxgDBhSAQ59ATAhv3/5FH5qjsJjOO9Sfzfl+5FMqbXDx+A175hDBT12ygHEtKl0sdSpFRMEkY
	dmwpM5wXxozBnltFMmWHoulKrtjRF/aRPVbPeUBFmp3r4xaXho4E9jrzVgTg/LelRSzvl2QPvNY7w
	8uZUDnraD3KvpNvaZr+WW7xwAOmK9Hrv7Pk+Yn5M//jJ2swoxBiKO5yTjl/rU8WeMyP5x8i4zp1yx
	dyGfF4l+0jWP561ZVobf9c9RuI0QZzGIAYHXrq237OtL6vdWGfRHXag4yfZViw7Z1hx7flIwKg+Zz
	CLNVL9ZVFbUMAduwWtlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLj5-0000Jw-Tp; Fri, 21 Jun 2019 15:45:20 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLiq-0008I8-Uw
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:45:06 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so1183878iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gxm7GOcU7qUFuWy1WhLbGliMHK4qz3vxLGVpx4HgQB0=;
 b=moZqDRZ2BR+wvMG5nlpY0ZdMbc4FBaH9Oatm9ufFW1xWv4o//FJ6SY5IXFB1Na8ESB
 R5WPHrWvdAzZyibh/L9Xm3NFcL33L0sAC/XY+EFM6rN+q+bFT2VcCyNCSKedQNXI/44/
 ssbWKLOfTr9BOlWxnbVy5U6MsNf1HuBl2PU8mCKOOFveZQtjW31frkb3+44ocuxTS5Nu
 VOIggl8fh1dcZZSnE3q/kb82ZU68iaWtdBliNWXZsVWgcvG1DALSnyW9CacDD21HTACl
 oNvvnz+1HillIZjWciMPJr55EMvJ0Vi4C6MgPDUjbhcQ4dWZVqWhN1xrQ6lalyK8UDeo
 JHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gxm7GOcU7qUFuWy1WhLbGliMHK4qz3vxLGVpx4HgQB0=;
 b=l1XLvm7egLnCzbzfuN3TNhyUys73HtIba4i22u2W+bJre5e7gUEBNifZHivwjnPWYB
 zzi/3Db3Mw17EjCSTrGU7niE0YVc+vpb3pAblYk5ml/o3v1roeQnNzCIxUm1aw8iGxs/
 aO021y/cH9jLPJYWA3HSRNLyRbFgezrFx2EtfbydTYnVexXUxaQ+rX2BtFZ5AYpPzi/w
 K9Ll0CziWNtJlQRPAI0zVh+ZMzx6Do/5IH5cN9N4W0pcejAy/Z6OL47Rk+wmq5MED+h6
 EOiW0MfvFxWzzbinz9HjP7H9UBsUoV9xfRQpknO9R4JAWNyOsnkHD7xlJhUJgsK9yw5Z
 vEPw==
X-Gm-Message-State: APjAAAXtMy/BlfQzk+ZKjYz6NU400bBdQg2YD35YrtYLdVo00yfcdOks
 9l0RqNHMvnjpP+vz11igBBRCV/m3rfCdV66kKm7l4A==
X-Google-Smtp-Source: APXvYqzZY+gOixQjMUl856N0sHPx+HD44kd2sZoHmHXE1d0Rv7jbWWsubnhodFuDC99TqRUIdNNTbX9lAyGC6TFDJNs=
X-Received: by 2002:a5d:8794:: with SMTP id f20mr37337499ion.128.1561131903453; 
 Fri, 21 Jun 2019 08:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190615002359.29577-1-benh@kernel.crashing.org>
 <20190615002359.29577-4-benh@kernel.crashing.org>
In-Reply-To: <20190615002359.29577-4-benh@kernel.crashing.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 21 Jun 2019 17:44:52 +0200
Message-ID: <CAKv+Gu95mmsSzzAUTp5Cw3vN-Ge=OZ6danTSeb3xs7dj9Vs6ow@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: pci: acpi: Preserve PCI resources
 configuration when asked by ACPI
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_084505_035790_B6B59321 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci <linux-pci@vger.kernel.org>, Sinan Kaya <okaya@kernel.org>,
 Zeev Zilberman <zeev@amazon.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Ali Saidi <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 15 Jun 2019 at 02:30, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> When _DSM #5 returns 0 for a host bridge, we need to claim the existing
> resources rather than reassign everything.
>
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

> ---
>  arch/arm64/kernel/pci.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/kernel/pci.c b/arch/arm64/kernel/pci.c
> index 1419b1b4e9b9..a2c608a3fc41 100644
> --- a/arch/arm64/kernel/pci.c
> +++ b/arch/arm64/kernel/pci.c
> @@ -168,6 +168,7 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
>         struct acpi_pci_generic_root_info *ri;
>         struct pci_bus *bus, *child;
>         struct acpi_pci_root_ops *root_ops;
> +       struct pci_host_bridge *hb;
>
>         ri = kzalloc(sizeof(*ri), GFP_KERNEL);
>         if (!ri)
> @@ -193,6 +194,16 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
>         if (!bus)
>                 return NULL;
>
> +       hb = pci_find_host_bridge(bus);
> +
> +       /* If ACPI tells us to preserve the resource configuration, claim now */
> +       if (hb->preserve_config)
> +               pci_bus_claim_resources(bus);
> +
> +       /*
> +        * Assign whatever was left unassigned. If we didn't claim above, this will
> +        * reassign everything.
> +        */
>         pci_assign_unassigned_root_bus_resources(bus);
>
>         list_for_each_entry(child, &bus->children, node)
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
