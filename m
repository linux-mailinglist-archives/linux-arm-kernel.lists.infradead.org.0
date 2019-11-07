Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7D9F3373
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OW3p7hsgNgXm0CzC1V7Jwv1Ejq8/6i6X4WRoW4gdkK8=; b=NUvN+ykR36ad7V
	Rv46Y3xPhEgHbgi94i3nYbbefmQB6ECgKrzm8SU7XOqb1fg/6d9S7u7r+2ne1F9Pq86NbqFTRsnQm
	muMoHIjdoHfZeXor/mvXnOpO1ARSUapxbR6noUDqaDwLpXtCYEEQKD2asyagdOV726m4UhPm4la9j
	hqqRe4JIdUzQy12wtf1hNeWdW7r+EFsU8VLQIN6CKraB5Q6w344Jez4BieyY2Pt89qaMiJEiV4VNu
	8aIRUwzDALt4s9tSLvz0lzhobiOcp/70ssU2FvLEBkipcv4bdGZHTL3aGE+ZD+6YXvY2Ewc2jOHvq
	ine+J6aQoa715FnXJLIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjpo-0003rX-Rc; Thu, 07 Nov 2019 15:36:32 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjoP-0001aT-Jv; Thu, 07 Nov 2019 15:35:07 +0000
Received: by mail-ot1-x341.google.com with SMTP id d5so2378820otp.4;
 Thu, 07 Nov 2019 07:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w4Awp6aOhgxlUbwSvEpd03sWLJcXbVuHqaesNRPrPJo=;
 b=ijCUyc5iys61fP5qEnvqB8BCmoBcDMao3mCulvGbWvgt55dkkYzlQq0oJND3XvRnBi
 YX/rX62aJZPdsgNa5wqocPqqKdiY4uUUBqLXVdkOVPvGzrCzQWan6hlUDPEy6m+8yrx/
 ryzXIA6mflIgSgR//YvsyL1BcQ/3ElJPQwUxHHpuzOgUDRau5Aho3VfkvjiXUhq/UMSo
 L2QLyWG0HdNqsrpkzuBewcFBc4q3C6WsFKch57Su8Q3AFKl/WCGb1LZSgIPs7q2NFUaJ
 COtnVEMPQS6kzIgp3u/4H2p1rCrdZu6XeNJqzALe+E896Lw+1OuBmqf8O38BJwTTKygZ
 XYIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w4Awp6aOhgxlUbwSvEpd03sWLJcXbVuHqaesNRPrPJo=;
 b=TRgB0CWnUjnKwUqcpFhrGRs/MhA92eMe5szad1yAb+hxxI5qdTVpdpgpGFFFFTrue5
 Cas21OE9Y3utZXMOZv4BWAnVCV6vITkW1NmWG5njddreDwT09he7AScFNKwzkNH5CXI1
 lh6rRXCXn6kWmfEmelcE2G9vuDyv6cwniyAFGxDpa00i5KXhVFsPLmX/ukxpF1APELxk
 3wjf2bWLj817eEUsTzT0EIQmLs5xFNqR2snS2KJe6XsafqYB4uOLayZZP5zd9d+SEMvw
 Yg6Uy7hJQ5DELsjuCS8QAv77DBtSlvF1/FA442EdiW269k6MZw+Jln8JYN4N8B+pZ8IF
 98lw==
X-Gm-Message-State: APjAAAVi7nItYiO7xXi72CHVKrVRb5NT1ZNbyTDQprjiQDf3ovfoesHa
 VspW+CpUx1m+9cUcNaF+6GlvLNDWO2xe9pGTLrg=
X-Google-Smtp-Source: APXvYqztU5GX0wlrnLPTMRH3pBVlSCTlwNpEd98regvGSDq6dRbCARkLpuzO2q7834lI/wC55JMJf9/Mpu2uMwyeWNY=
X-Received: by 2002:a9d:1b0d:: with SMTP id l13mr1540580otl.84.1573140903023; 
 Thu, 07 Nov 2019 07:35:03 -0800 (PST)
MIME-Version: 1.0
References: <20191106140748.13100-1-gch981213@gmail.com>
 <20191106140748.13100-2-gch981213@gmail.com>
 <1573132996.8833.3.camel@mtksdaap41>
In-Reply-To: <1573132996.8833.3.camel@mtksdaap41>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 7 Nov 2019 23:34:49 +0800
Message-ID: <CAJsYDV+UJFHsZWMOrvQFRm5BeG-6-YW8KSatSTxA=_gPuHJ6sw@mail.gmail.com>
Subject: Re: [PATCH 1/2] mtd: mtk-quadspi: add support for memory-mapped flash
 reading
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_073505_705432_9DBCF243 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Thu, Nov 7, 2019 at 9:23 PM Yingjoe Chen <yingjoe.chen@mediatek.com> wrote:
>
> On Wed, 2019-11-06 at 22:07 +0800, Chuanhong Guo wrote:
> > PIO reading mode on this controller is ridiculously inefficient
> > (one cmd+addr+dummy sequence reads only one byte)
> > This patch adds support for reading from memory-mapped flash area
> > which increases reading speed from 1MB/s to 5.6MB/s
>
> This may not be true for all MTK SoC. Which one are you testing?
>

I tested it on MT7629.
There should be a 5x reading speed increment under DMA or direct read
mode than PIO mode because PIO mode needs 30 or 36 clocks for every
single byte of data while DMA or direct read only needs 24 or 30
clocks for initial command/address/dummy and every byte of data after
that only need 8 clocks.

Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
