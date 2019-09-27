Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A13C0211
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3SHqcYe5jLuLsVOd1+R0vnhgN2DD4KFn88EazhFths=; b=f2hmIxIVZEGo9b
	AULWtt9KQVIvK2twZuYlMLVOG20UR1VG4PnA7S80mrG4AnsbDpJgw3lZ/tyBdWHZzo0ORFdzzO8zF
	Kjt8XyOSsk4/x6HbCqDdYlsfe/bHYHgcW3k23r39aNDpbWYjT+eAVPGMY0DcNnjXlbOoAhJWXFO1C
	OAyM6cFDG6cK/eDQQUFpzjIqUomGcEWD5G53ZGm9PWnNlGVBG82ejIRAWbHriwfhTDEJuku+Y5TPZ
	+stE/DKqjaduzy9dpwL9GmMI8/qfGAFBKyKuJOk6D5Q7zrmkPJWyWU2/IY2HqGAOkv/TGJEJHRYbx
	cPqu9G1nqtnP1UkEaXjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmNV-0002rd-QS; Fri, 27 Sep 2019 09:17:29 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmNK-0002qY-5T
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:17:19 +0000
Received: by mail-ot1-f66.google.com with SMTP id o44so1634378ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 02:17:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3+QY+V36AacojxG/0XQzOM0qGjwlQNtKmC40kmfrXyA=;
 b=kSD4rcTTlAo5w9OAZbMvT5Vn+WVNuPq49iZMftvLbPXdEpunafkvclbOVNd2iR88g9
 msexvAWi8LlOaP/5p4z8sT13BNcNwuZfAUBEZcSMz4acEajFpJJvfc3U57hswJ1IsGpS
 7WlfBYrisHgsZX3DucifLvYzVkvhWCLrVhhLVStw01J8AY8o9NfJvbZMGSuapIlNXHa7
 3AqXmSPtNhuEVLb01ZozthuktQPRFbXHrp+EemVOA08mT2vyX4KYG1EzJC758Amuv1Ss
 0N9UgPyje6BLxw9CJ0SeXyXwmH+CMv1OxVrlQ3LtbcJRHEjwhLHCYyYBLpRPJmZCcwWR
 FJYQ==
X-Gm-Message-State: APjAAAWinyfhi+gBab7Y7CcgG2okHstz9tjIFQFtsWFxHsCyG9etZnwn
 BnKN4TTmvUP4FYzVM6JjD55KeRrkXUl6dowyAgs=
X-Google-Smtp-Source: APXvYqxpPf7tCldKfOBJDzwGiyRfjj2zWIOfYmy8OxVjpBvmQqIYxglyIQUEnniPwSyamhz/Xmsma9UWW6oCJBnwO8s=
X-Received: by 2002:a9d:404d:: with SMTP id o13mr2414433oti.39.1569575837231; 
 Fri, 27 Sep 2019 02:17:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-2-robh@kernel.org>
In-Reply-To: <20190927002455.13169-2-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Sep 2019 11:17:06 +0200
Message-ID: <CAMuHMdX++iEaib2c9hptqeQH60dsx-pCEWCZVtirAAkvW5v51A@mail.gmail.com>
Subject: Re: [PATCH 01/11] of: Remove unused of_find_matching_node_by_address()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_021718_205207_FC7AE23E 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Frank Rowand <frowand.list@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 2:25 AM Rob Herring <robh@kernel.org> wrote:
> of_find_matching_node_by_address() is unused, so remove it.
>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
