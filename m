Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F1A2003E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WsucMJ+UOihUOc8Li56EbLPF6qc98JM90i1FBSsVyYE=; b=CuKBf8rbgXzcVnh73Gr6Klz/3
	gVegUpYZrOLFwahwv1wGNdzMdPq3EGDH96hooauU3Jfc4lEoviwhiYEoS8+44l7s37QbA4M0nWyua
	6ZamsAJvwccvi2PpnafBz4fJVYY5xc7B/7OJUTidfipnjD8RYC906NDm2+9PibA8u9xH43rKi4U3p
	sxgjHDZURrhh6W8CYb0wS/H5X/bsG7Uoag8/I+aRthK2kkJKQuHyup7tZ0XUI7+ymT3636cp7OFuf
	ka8ic8KxvqnedN9ZjCv+IiuWTYoCqumbxVfW5xmDqqci7xEe12uvFV0BtwVi162FiUdRu82vHtgjs
	eag1W3XlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCOh-00021i-2h; Fri, 19 Jun 2020 08:29:15 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCOU-0001z6-4M
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:29:03 +0000
Received: by mail-lf1-x141.google.com with SMTP id c11so5056261lfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 01:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=irVvm75B8uOjhet4ds9NewlHhGnanjSr3qTRTZzIUE4=;
 b=qkbi8YvZIpYdgXOhuLz+oLhk6FU5nre6FOh8jwCxVM9654uCe38mG3xi4sHqGzzDyG
 SEH1hJrw2TFIChHUxX1ZXnbwARwg6RC5j0BV0+jMRPStvzbKMhHOWFkkmEsrWjqdX5F+
 D1IOfQlW2zLQg/nVx9gJMOxi4uOERKvqBd1S1RhEt6EhjY5th0/tAvBfP2KAJAM96y7o
 h72udRwv1GPKxwptl875dVONvJoltvXpQNW88Rr7UCqkXi2dwlS43kJ7lnlN+shZedPc
 UEpFi+EUsizwMgSG5KrzWkYQzjXdopu2qfdbxfjTUi6dvlVTSJe8cWAu3gdUIqCShHxT
 T2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=irVvm75B8uOjhet4ds9NewlHhGnanjSr3qTRTZzIUE4=;
 b=IDeQJzycbWkqDkcIsYStb+Btl5qqT/0NOBy3U3nVNLzAwrk/H2nW2E3lKuLJCkOZA3
 db7JfXvg5gzbauyYZvij7kpptVOCHKf/DzF2TRcyJuKsv1tacSrkdfNn9rMFBbMkXWBv
 QmWf0KMX7e5ycUZ4TJTTqmCnvzGUbfIITRoZSrsAkTOoDce57vjkZwHj01NYzYZTlahB
 85NgmYDALfUW3BlEJeY6GLR0KPi8iJR2rwtClTK0/BxYX7L17LiWVxPJoenodALSJr09
 JfcVuu4UZEW/tTtBm3NrnKgyOGYnmxaEZvJ+kICkHdyqDJk94s5gVi+TG74kfTBYzDSV
 XMJg==
X-Gm-Message-State: AOAM530l+zphUINaC7VKeuHVk8aEo4DH3yyf/6jNfA53lZB4EbVNfSCk
 lWM2K9cKIgUaSUFsvrhmhanXSw==
X-Google-Smtp-Source: ABdhPJxnSAk4hCfsyIu7N052ONa1UuRXTstPiF0JmLx3L/kM6WdrlnqV1xaj4A+uNl5wLop8yEYwoQ==
X-Received: by 2002:ac2:5c49:: with SMTP id s9mr1327184lfp.90.1592555339610;
 Fri, 19 Jun 2020 01:28:59 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:8c9:4beb:2ce8:f19d:33e5:571e?
 ([2a00:1fa0:8c9:4beb:2ce8:f19d:33e5:571e])
 by smtp.gmail.com with ESMTPSA id a16sm1058721ljb.107.2020.06.19.01.28.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Jun 2020 01:28:58 -0700 (PDT)
Subject: Re: [PATCH 3/6] exec: cleanup the count() function
To: Christoph Hellwig <hch@lst.de>, Al Viro <viro@zeniv.linux.org.uk>
References: <20200618144627.114057-1-hch@lst.de>
 <20200618144627.114057-4-hch@lst.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <04e7876b-a8f3-3f6e-939c-bb0764ece1ac@cogentembedded.com>
Date: Fri, 19 Jun 2020 11:28:44 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200618144627.114057-4-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012902_376079_F0C5B470 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Brian Gerst <brgerst@gmail.com>, x86@kernel.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, sparclinux@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 18.06.2020 17:46, Christoph Hellwig wrote:

> Remove the max argument as it is hard wired to MAX_ARG_STRINGS, and

    Technically, argument is what's actually passed to a function, you're 
removing a function parameter.

> give the function a slightly less generic name.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
