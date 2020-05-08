Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C461CA305
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 07:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFlJ2r1gYSxL9ukgoW1usU/1Dt44fQmPRYgYxDzgoPo=; b=uXurt6wKIqfAXb
	tIm8NZ00GQ/4skqOo/cDroKQrugK5uYZ6hcRkA5hg9YseLQqbcQ3Rvgx8I0OmknsRsXXp674dHkxQ
	vPjAKu7+A3ta5Q4q2HP8dD2EW8QmJ9RWGzoKLeuCIfZKTVqshCMwHE8Du8b+cN+zNcTCYXPQa0D6s
	lnI/fpfJHO9V3LWi3m36T++nPXWTUWfbF+fXC+wSvQu4h75x5JUdY9eX5PBOJnsunvbV41CoskFzC
	Njr1nwBMfdceGJxlUT74WtFalclp28I7/dBBPnnUyVISTuBsnAFjZGIVtf4Gh9zM8qSkfXBGfwdcH
	bXy8skOmTax7IZwqLYjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWvyD-0002jp-G7; Fri, 08 May 2020 05:54:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWvy2-0002iX-Ge; Fri, 08 May 2020 05:54:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id e26so8959616wmk.5;
 Thu, 07 May 2020 22:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cBuXlY0lPbTzvqFi3J9oIqLP+OF/m7YpRIj6GR1Gj+U=;
 b=K1VwBxCBXCfE4HZYWiqihZRJtx8ctP1mVKfq1o6aCJtu/K2DwQN6yjel0+96+k0mcG
 0uuiGrKz4zsQBMXrSSEoq364xNTJ0XfUyV8v85i/bpTYtVg9HOLeugf599IF0IqQbtQ0
 HFuvcYQomO1LBbkbc814Hmv+6PqZ8vuzbej4nEQDUqXoysFOc58ddm3QesuV+2jOOEki
 fJy7J3YgVTkYXJsIaZHg+NAtJmVDKvdUCxK1SIi+tER4fIclIQXInU9RVQAgG+SaECXp
 2NEaDBLaPWFmApTkZQjPaOAgRMoh6nbkR85XVuxIcheeDeBQLR48s6gZdmQ+i1xfKWoY
 EByg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cBuXlY0lPbTzvqFi3J9oIqLP+OF/m7YpRIj6GR1Gj+U=;
 b=IhHpSSNwfNCh6rXiaMipv/UBeJrwG+S9ucJgw/I7YLd2sCkj6tbu4/8WKYScMdl6QE
 KGWwE2aoJ6kUtNdsF2iK93asB4nIJhT/1Qrm43kyqkV9Xwx4EmiXFJEDCql2jTu1uxh9
 f/osiqOQRWBuMz05WlT5/JehcLpeGMzLapPhjineDsvZ1QJa2cDEanizRKBcTLAHdCwG
 60a+Ip6UHHLQ++DRdMA7fvZajHZR3YxlTyPofQJOeAqYlZIPyCjxmUOMPKUOn2RRlD4C
 0/pXro0bLBBXATPA875SY55Dfn375ISjD3CnLNUGiyxPyzBjHDAvy5OIPGdfw63NStHL
 oJuA==
X-Gm-Message-State: AGi0PuaDFqPWuLfun8fZbbUytLizXjt8cAma9HaRKRlOPSDqZIViaDrk
 VC9ikd2cB8X/NMwcRVfeTXwFcAJ0
X-Google-Smtp-Source: APiQypJN3BPfHFPyK3WDkQRQQXzBNgHR1dVgfWeEuUZhd4lAzK8YcVD4LeyB6dzQUvulSYABR4hCgg==
X-Received: by 2002:a1c:5f46:: with SMTP id t67mr15219360wmb.156.1588917274753; 
 Thu, 07 May 2020 22:54:34 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f28:5200:e838:acb:794:1ab9?
 (p200300EA8F285200E8380ACB07941AB9.dip0.t-ipconnect.de.
 [2003:ea:8f28:5200:e838:acb:794:1ab9])
 by smtp.googlemail.com with ESMTPSA id o6sm1177075wrw.63.2020.05.07.22.54.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 22:54:34 -0700 (PDT)
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To: Jakub Kicinski <kuba@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com>
 <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMpxmJWckQdKvUGFDAJ1WMtD9WoGWmGe3kyKYhcfRT2nOB93xw@mail.gmail.com>
 <20200507095315.1154a1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMpxmJUEk3itZs4HujJOXUiL80kmEvGBvLF0NFc2UQoVDVTWRg@mail.gmail.com>
 <20200507155650.0c19229e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <c6e12eb6-d6ea-9ba9-4559-b2eda326601f@gmail.com>
Date: Fri, 8 May 2020 07:54:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200507155650.0c19229e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_225438_582527_72B79DDF 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hkallweit1[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hkallweit1[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08.05.2020 00:56, Jakub Kicinski wrote:
> On Thu, 7 May 2020 19:03:44 +0200 Bartosz Golaszewski wrote:
>>> To implement Edwin's suggestion? Makes sense, but I'm no expert, let's
>>> also CC Heiner since he was asking about it last time.  
>>
>> Yes, because taking the last bit of priv_flags from net_device seems
>> to be more controversial but if net maintainers are fine with that I
>> can simply go with the current approach.
> 
> From my perspective what Edwin suggests makes sense. Apart from
> little use for the bit after probe, it also seems cleaner for devres 
> to be able to recognize managed objects based on its own state.
> 
What I was saying is that we should catch the case that a driver
author uses a device-managed register() w/o doing the same for the
alloc(). A core function should not assume that driver authors do
sane things only.
I don't have a strong preference how it should be done.
Considering what is being discussed, have a look at get_pci_dr() and
find_pci_dr(), they deal with managing which parts of the PCI
subsystem are device-managed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
