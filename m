Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70607D7FAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j699clKhs/DU+kZaT4+1uIhlLmiBnVXbp40odnfAJR0=; b=sdLVwJRiRJ5toF
	gJYYqkTmhhRT/2oi0gBXQ4SctAL6r8Cwu8QuhnWyhndIkFS2TGDVsG493YFh2RR6AZPBKMgdf0WUL
	Ht05uViCkmDiBifhQKC1kTSPU6n4va1iMaoYAiGm+K6bBBuCXoY09PC1YLDOR0Omt3vJv0axLI087
	G0e6/s6MppbT+DJzvrnY+cQt74dXIuNCYfKfiviKYIny4Jzpx/ap9ZU/v8SqHuHMKAM4YQZ8r3Szg
	Zz/dIDgkppmugT0w6ETtypiz3iScF0TpLth9C90E9O6ytdislR8LomaMX+5eiS/7PG3s006jQC2r6
	/7nq9zlYAxFXeFBHD7iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSDs-0007Vv-Fe; Tue, 15 Oct 2019 19:11:08 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSDa-0007Qh-Lp
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:10:52 +0000
Received: by mail-oi1-f193.google.com with SMTP id o205so17796737oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 12:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Rdx+RGcYZmE7xTrxPtMWVRt9GbBcLhSlDvK0sKaIe84=;
 b=jgnbSVd0EPFE3TZjYsJeFM7bBxgKvkQl4KbWUClpJ4hPIyCf2CZK++72E4VJAvmkz8
 vv7dUf1kbw6TaFl/PsWAqSqKKTCmJvphDCM+PfgGVYpvxHsHUMYhQ5S3RLSUe1Dz/0tu
 gcVWDumQTc6++toKajLHqGtyyVdAwv3kpnW8Bwg9xBETmWldRDg0WNABedEiX4HZjEa6
 CSLGUw8DZWrXqvB5JIK9hrVjzmqIo14TLxQzYt4qEuJ3DRcTht8CRAQrvp9V11VW1XTe
 SyCJrQ0kbQKUvfkm1dU8f9IlVwbWHplHrhm5iECNGo75eOvvBiP7k9ijUmL+G9OVYk2e
 L98A==
X-Gm-Message-State: APjAAAU0h3OtNakIxVyo175ipgiV4k4zCK2rQNaU7shxbBO51n/Vi3y5
 7+emIjklMX3dNe23lA+iEA==
X-Google-Smtp-Source: APXvYqx+m+Bb3C7kgH+eLbBDO+U5qtqn66b5kqCPYE/1rRFEDvRLKZS0IRkuc3gFAkT/j+pyxzRgCg==
X-Received: by 2002:a54:4f87:: with SMTP id g7mr108763oiy.100.1571166649597;
 Tue, 15 Oct 2019 12:10:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l47sm7091562ota.56.2019.10.15.12.10.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:10:49 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:10:48 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 0/4] i2c bus recovery for Microchip SoCs.
Message-ID: <20191015191048.GA32065@bogus>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_121050_736426_CC4AC76D 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wolfram Sang <wsa@the-dreams.de>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>, linux-i2c@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 04:46:54PM +0200, Kamel Bouhara wrote:
> This patch series introduce the kernel i2c-gpio bus recovery mechanism
> for the Microchip SoCs. Updated the corresponding dts to add i2c
> gpio pinctrl. The bus recovery is configured for the sama5d3/4 xplained
> boards in dts.

Now we have 2 drivers with the same binding and code for using GPIO for 
bus recovery. Perhaps all this should be common.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
