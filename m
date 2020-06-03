Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB6E1ED735
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 22:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/zJBfoCL4SqdTdlxtxNtBH5EZHL1ZYt4jcNMqg9z3A=; b=P8fQYFDaGFWIB+
	DYqmxs/xpI0MbHeKJZLlfqeulfVY8wXz/fXu0Ek/0PcE1woqlt0cw05iKDLhIQGEDf0+8MvuDTSUU
	nWYpT/EaCdmVDMVX+ck7liackXu/0VzATEMqN0ELEcH8bZgoJv419SbRs9YDKk765ZgS0es4BfUjM
	tAmOKpbVVZBKZMAypriYRqo0cbQVRSJ52Y5YdpLySumGmaI4GfAEB5FS24OgFqfTe9bNyRibTjDlg
	/+fz2DOP4999om7sfcTkGM7Eudks6SxF71XiImmsYvDbiGhmG7qHfDDy3RxsRGhUowze9AxChZyqt
	bNDZCN44KA17zTdw2LVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZeS-0003aB-6y; Wed, 03 Jun 2020 20:06:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZeL-0003Zg-LD; Wed, 03 Jun 2020 20:06:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id x11so1189392plv.9;
 Wed, 03 Jun 2020 13:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8SckYXNhOKP0BM4U/XRIohhWa9dVky1cTtSkQiiBe80=;
 b=uDQClyiMo13aZBAA16EvaegKGeXXTqMzBafeDrgTYxQI1SqW3kHC0vsSMiZbXm0GdQ
 h5VBLUpgad+47wOfHO5NU/ZcQyktlo0Pfxi5/RI9d1zY4gWJcfzroLtWc7XaM1Wkk2QR
 ZWOBcSUJXdXfjZj4y2oaEyuXZG+OBW6nxOSzq0G+yIvrTdfp6Wqiz7mcI+XQ93Uxi67y
 rJbOLBFoeRhJi0z48N1D2/QAtfi/tw67xItYWFy7zaBupRd1JBcsai0jeeWsQ2L9Bv1Q
 9zkJ07cvf3dSf+uwSM5uKtM+rUCQUuByVB9gFrQEcbO0TTyKDjNjTpAwnurBK6jxABXA
 WAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8SckYXNhOKP0BM4U/XRIohhWa9dVky1cTtSkQiiBe80=;
 b=sczDzMCO8P0Zs0UV6mTo+6i40W2WgZhkTAdgU5L+haeM87yNElXVXPPFOm/HQ21UrV
 HsSw6+wam5A9z3L5m3I6HqnMDrzrgOOAH3BPfXFb3H0QFfnvTsdvFzZ8kY7WNFzbQhjP
 ILT0i589MnVELXxdAc2AQJS4cQd060iJHrD7w4TU0aZINXk0j0CZ9q9LJGNUJ7Xzbm23
 Jc2TZz2S3kDyWpOcD53Shqb/9V6UGVGiy+KUiBbUeD/By16E0l6P8S4Xpw3CxP6DexHp
 zlaJCE0/tPimTsS49Lbh9m6TAujtMhySR8EyXiIsty9kBcEhlxDxcfZROGuyrSv76N6t
 +Ecw==
X-Gm-Message-State: AOAM533DR+eRJGZPVl79SY7ymW+9GWxYEB6znm6wm1s7TgBXGQJjdjT2
 gugFAsswuZBlSF+jOVMyFiM=
X-Google-Smtp-Source: ABdhPJzBLNcFjE1l215XhZVkV8Fw5Vstqw5QjosgAfX+y7AzQZEZSayzQVNnNm5wirHbT9+qoXndpw==
X-Received: by 2002:a17:902:fe8b:: with SMTP id
 x11mr1383928plm.179.1591214769048; 
 Wed, 03 Jun 2020 13:06:09 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p12sm2620073pfq.69.2020.06.03.13.06.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 13:06:08 -0700 (PDT)
Subject: Re: [PATCH v3 12/13] PCI: brcmstb: Set bus max burst size by chip type
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-13-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a3ec9783-5859-9729-e79a-e42b3ca02242@gmail.com>
Date: Wed, 3 Jun 2020 13:06:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200603192058.35296-13-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_130609_693852_4CCDFE8E 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/3/2020 12:20 PM, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> The proper value of the parameter SCB_MAX_BURST_SIZE varies per chip.  The
> 2711 family requires 128B whereas other devices can employ 512.  The
> assignment is complicated by the fact that the values for this two-bit
> field have different meanings;
> 
>   Value   Type_Generic    Type_7278

It looks like Type_Generic and Type_7278 should be swapped in this
description. Other than that:

Acked-by: Florian Fainelli <f.fainelli@gmail.com>

> 
>      00       Reserved         128B
>      01           128B         256B
>      10           256B         512B
>      11           512B     Reserved
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
