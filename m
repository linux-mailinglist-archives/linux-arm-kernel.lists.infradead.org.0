Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE9AB4F1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWAV3uLfwJqOyoxnbPngtPfvH1uRegyg0HJwZ4O5ZbE=; b=HurG16j6YG2e5h
	brUwa6WUpHyTaohMKGjojskxQ4Bpjik0adFF0oi9q55kYoo2mdojVzbNse/Cz2g85wiC+uu5qL4Vz
	9uTqhcR61MiQex5Loa9eb6KSyvhMco6cjCjxunIOHCa5n37XUQ5UesFhDDUxuGD0+esG+uK2fzR/G
	6FEoZxoRBKqS23jNn2E5SBtZo6TNXl7QZkwYTeII7TM4rFT9fzMxW+UwAZ56QFO2PFaxKzKwhVl/d
	1VckC2RCUy//GG9PEzRYDcg0DHbjZul1mCJ0gfqiaLKus0uxw5XmIBEMThpXrY9j01LETf9tDVu5+
	PotnTz1qBh2OGmDGneEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADU1-0001Fi-Oi; Tue, 17 Sep 2019 13:25:29 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADTb-00005T-Nj
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:25:06 +0000
Received: by mail-lf1-x143.google.com with SMTP id u3so2847799lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 06:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jnmb4XCwm5+hoE4RzVuISq1bLHtPXM3ASR1GKaav0Lc=;
 b=NEhYd8kCpWRlM9SpfyraQACRGBQCnhJfzf3e5jfCT3CfC3oSnxwoW7xcFCheDX5XX7
 4H0xBGt258UPjKjHLiBhhkwUxriiKSO96dFhMd+LZ1rDBZITs3GBvQq709mVjhy0CfXQ
 CYD2l1tz8t+v7nS+ZZ+ZVQCPBF/r1V+0zjOXD8UpAUv6M5RJcRoMUTG/RvYGWI9VnqKS
 eU0Q3oFc28Myo5XJBWeqASPs0qIFiXOwFlOHUDcok7DjxJZDt9yWWIAqBBr5ahu4DKiM
 H+cze+dUIwYc6XCz4GfOofxoIMMGUjVD85uwy2dgnay2fIb4/8QrVdTh3BTzwr2IlqHq
 CRgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jnmb4XCwm5+hoE4RzVuISq1bLHtPXM3ASR1GKaav0Lc=;
 b=aZsC/1fgDo7Hy5NLIj2iEAuQUTU1XgA08Y/QZMB0QytLQPAUK+qwwaKUj57BEkPYaQ
 J94SoVKYK1VGWt2mFeiaOETkQro/XrsKCtt5zlPFX434lHLMJItQQ+PsY8zUdi9YKXQ5
 qMJnf3XSkwyAD/itqtgoS0NUhfHs3mgA/pylXtMVZ+hNRlGB2PVhdaFRaxj5QdXhP+nw
 pRXuYQxeF4sHkYktzelMpYLYcU6y1QCkU2wukAs38IYNGgjTn9BGZCEuda5f53jLvuMc
 MU2EUsQF2vbT8IedZzwPQ0Erl1eBIYwv/HlpVpsRjG00Fq9tysMEHdrriDjebQ8dhCoB
 778w==
X-Gm-Message-State: APjAAAVrW3a3R4jp0R0zE6c2QCuHOEI5SZ5X1XJUwOmlfwAZDUz9WWob
 3vxMMEs4PXbq04DV3nLWx26k0bcodPvyoJmCR5g=
X-Google-Smtp-Source: APXvYqy/5kMndWQ+BXE9NO4jUYAyx7La4UeW2AzH16XT0MFoyeiEfqsQxINgSCz60jCiyetFuOOnMS4FmbbY+VBHANA=
X-Received: by 2002:a19:6556:: with SMTP id c22mr2095064lfj.90.1568726700979; 
 Tue, 17 Sep 2019 06:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190916171509.GG25745@shell.armlinux.org.uk>
 <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
In-Reply-To: <20190917130759.GO25745@shell.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Sep 2019 10:24:57 -0300
Message-ID: <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_062503_781027_CEBB2B12 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dann frazier <dann.frazier@canonical.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Will Deacon <will.deacon@arm.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, Sep 17, 2019 at 10:10 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:

> Will suggested reverting bd2e75633c80 ("dma-contiguous: use fallback
> alloc_pages for single pages") which has been implicated in the same
> problem here:
>
> https://www.spinics.net/lists/arm-kernel/msg750623.html

It seems that the final fix was:
https://lore.kernel.org/patchwork/patch/1121600/

Does it work for you if we follow the same idea?

--- a/drivers/mmc/host/sdhci-of-esdhc.c
+++ b/drivers/mmc/host/sdhci-of-esdhc.c
@@ -1105,6 +1105,7 @@ static int sdhci_esdhc_probe(struct platform_device *pdev)

        esdhc_init(pdev, host);

+       sdhci_enable_v4_mode(host);
        sdhci_get_of_property(pdev);

        pltfm_host = sdhci_priv(host);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
