Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED651ED726
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 22:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2BdW0GkVLsK4W+lnH4q6faDwGtxhL2NIEtnWthfc+4=; b=cC/iGcsvr+R9Ek
	Pm9DDSgbahTQaN6ffenxWLOKdtDVnsyVvjaZzHfrKuJbEQg7ON8Z/gN8R8LlP0bpBFwQJNmPfe0ex
	QjS4k5AHmefdBW0uPXczgc+gz+lPxgP1iUij+v15bM77GfAVsSHgMrPVNnwCEGDboEzI0LUk8fVyq
	fFMXhUEPLa98IHAfF4RW87vqXXXDaHHC1f2Q4BroA6Gz6wKAcNBNgA6X2spYeab9laEC+tbbhKy0b
	0Im6pJ05a2vPps1GkeylltqSX5RH2MaqETD/JCAIqKN9IhcnVXp/7p6h51zQOJJr0B5t7KqeKGN5o
	POvdigi717JaC1bWPSJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZaU-0000dI-Gr; Wed, 03 Jun 2020 20:02:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZaN-0000cx-JY; Wed, 03 Jun 2020 20:02:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id 185so2422997pgb.10;
 Wed, 03 Jun 2020 13:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Tnu/CyDw1h7BIsRr4D3oJlUTeZPgHQX82cMlMteGwro=;
 b=MEtVuioVQqydKcyY1av8VW+zNuuMhBV2H36aKCIaBdCfvbzyqA3UjmGvumOy4Nj6tg
 C/I6P72J8m/HjG1pkXC5IM9EgjFLssjUqSGVVxX2+97W8EGwM99MFl322eU0vVomTsO5
 R5oliaX5ikWGbU/a3LUYLVq0/tJpl0nqcJoze+M65G1ZMB2FRsX00IQUzVddl/t/TkV5
 cpAjpdmcmRVxvSEbIi4Cly/qIsReJw73HCSgV88hMbvGovIjKbpklalBh4u3k0T+NeNk
 LnfFjd3uX9AZaoAPrUmrkHLHhxWeSID2c1y0cnyLwWgsRJYZY7PGWRbOjqtAr+Mz9x6z
 JeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Tnu/CyDw1h7BIsRr4D3oJlUTeZPgHQX82cMlMteGwro=;
 b=VOUXh5X+P13sDJuPhr+DkrzpRANYUrEY/EoIhF5CsTyCUiThOoEOYLO5px3Gp0ngj9
 8aSTEZkwP2GmIPxfeLOjNrxNASXLUjDUuIY/opatkzxE6s9oivcqjTa71pE7fc5ZyrJb
 UxEaPa35cCS+21tbB3zJAl+uoI5mHW9YZMOi3QukhZKifhXi0TwGy12dQantEc7emd3x
 8B5xUwZnwrdNEhgJ0o8FBHg3hKy+H8vww6EfdMMNh6Vr+8IEFWdkg5gQZ6a4R+8jhMlF
 tDeVUJs1Dm+ySSU1Xrc61Zo5rEKXTlciaHcgXF5zmN4UYXG+5HKSU/kT0jdUN8eTdUzz
 T+Lw==
X-Gm-Message-State: AOAM532gygF8iVfM5vtV9+tcr82Ek9fghwdh3nFDcXt6AVJqtXv4hJBy
 gre2tPihtWUYl7EbtCw+Hpw=
X-Google-Smtp-Source: ABdhPJwD3HI/ELCFQ0lrxbRHrN080D1603C+j21RJiOcQinFRr3pKAOQdhIwn3FU/yre/Y8DZ/hcBw==
X-Received: by 2002:a63:648:: with SMTP id 69mr1003980pgg.109.1591214522816;
 Wed, 03 Jun 2020 13:02:02 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t22sm3340139pjy.32.2020.06.03.13.02.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 13:02:01 -0700 (PDT)
Subject: Re: [PATCH v3 13/13] PCI: brcmstb: Add bcm7211, bcm7216, bcm7445,
 bcm7278 to match list
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-14-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <5858bfe4-5c2a-1a12-e934-37e11c3bb693@gmail.com>
Date: Wed, 3 Jun 2020 13:02:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200603192058.35296-14-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_130203_660360_E29D2F5A 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/3/2020 12:20 PM, Jim Quinlan wrote:
> Now that the support is in place with previous commits, we add several
> chips that use the BrcmSTB driver.
> 
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
