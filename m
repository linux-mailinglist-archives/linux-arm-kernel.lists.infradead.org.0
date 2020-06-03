Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7D01ED76E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 22:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ho4U8gutgQJ3AD8Q/mlYXgDK/rXfglToaa/uza5V5hU=; b=IHdEuJFlElig+9
	zv9Vg4KKVYAZeMiQl/cLMTShimpse2rk92EodYSt48G9uF7qJuCcoihFu8p7ZTSPVRIrVwSp7aYFd
	JVWQmkBg4eXwXIbgtU92asnq6e7ZP4lN2623TQeHsjq+cRZZg72XaPq9gM/JXPPTtpBK5wnYaZ21e
	3YCW8X20pCUgkdZoGlGPLDU9Xog3CTgDo9RIu4tUN6w3+uAphkU2+Z3egWpwR/h4Scz/c21t8NwJk
	ICZFt37Mwt33w1tlbmY3d0IK+rR4yVOD0Abp1fXkJk07uHx2aiAJ5w1gsTuhOh0eaacnCZSxD1+B+
	R61UfI6VnE8aoOIQ7ZLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jga4U-0002uw-SF; Wed, 03 Jun 2020 20:33:10 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jga4O-0002uW-RT; Wed, 03 Jun 2020 20:33:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id n9so1229934plk.1;
 Wed, 03 Jun 2020 13:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tKK54s37lQCe/iastVr/8YgFF4Qz2iFi8Ru/giratfc=;
 b=cKQIjUAAnyVFabLs4fElfG3Cv10Qjq7ZEkJ+YkgCFBYDAf/VKYDrPtEJGWcTwbpzf3
 k1WrTOyUZU7Z+sfuK0xWmI8Zt6xnLEFwKGl/FiSLYPKkzvJUsWXZibRZ3JjnZeN10k6m
 ofA1mwaq/6iB2Jo96JCPlDBbCSK3Qj7xdBf5/MhmUpPn2cVycDd0y++a21AaFr+tiCc/
 fN4MVjiRnicjR18xshg8o1v0Rj5Ye1OU/JivxEHA5GlPyUZc4JkMjuU4xgHuxcyJAWi5
 0WVDVd8MBw57vbfs7ZstpWTMWnCjj+BHJz9pwjynbn+eL9sNGezQSjskxN8lK71vzsBn
 iz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tKK54s37lQCe/iastVr/8YgFF4Qz2iFi8Ru/giratfc=;
 b=t6ABEMIdnm7CCV+t/MzZwRO5F2SSD1nTgP5ANWJzyAGESoi7W16RYY4pr+gGd8CCbL
 mhNcZTXaBsMAhv2VwU03s5uDLRQtOhDYn1gJFV4nCZ40qsg5p9o9GGnCIaarwC+uCzib
 PUJZFEoFfWF39tpreEPkZu3CdwaW83+CMGiw5A+BjZoEsuMnnR9++tITxiIQipOJ1zb8
 UDlzzzg8IVBakr9ZvqiGLqUixE0rVUXuacfjsWCF1uzsLK97F+GluK2HAtYvH6snJS9f
 8S3iJ6/Cgbzh7opKLcMDeUNuWLqAxEIrv8mpnhk0/HfLMDZnh353Pq25+vmndZ9m6Qiy
 3COg==
X-Gm-Message-State: AOAM531Jxxepj6pm6J/zSK7rljHM07rSFj4hQTH8nl56LJTTCkQX5hya
 raoQHLuB92e61Ub3y9Bg9qk=
X-Google-Smtp-Source: ABdhPJyLkFbq2hs5iJJsfKh7chIJrewBYh8p9pOzBn1RZaK00q+ODcLjjar1be1cKhF/sxx4V04S/Q==
X-Received: by 2002:a17:902:9a43:: with SMTP id
 x3mr1496123plv.190.1591216383928; 
 Wed, 03 Jun 2020 13:33:03 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 85sm2597077pfz.145.2020.06.03.13.33.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 13:33:03 -0700 (PDT)
Subject: Re: [PATCH v3 10/13] PCI: brcmstb: Set internal memory viewport sizes
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-11-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <40eda019-21a2-32ae-d0d7-6dc77f9d91f7@gmail.com>
Date: Wed, 3 Jun 2020 13:33:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200603192058.35296-11-james.quinlan@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_133304_887942_01A85754 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
> BrcmSTB PCIe controllers are intimately connected to the memory
> controller(s) on the SOC.  There is a "viewport" for each memory controller
> that allows inbound accesses to CPU memory.  Each viewport's size must be
> set to a power of two, and that size must be equal to or larger than the
> amount of memory each controller supports.
> 
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
