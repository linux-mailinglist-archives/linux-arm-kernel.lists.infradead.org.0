Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFAFA71D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwzVMewkAsJV6mMn+9Nrh8CsuNEfmmWdNLR3ae9NqTs=; b=Q3ZdRfwnOdGhA/
	Aske/7UDkTZbse342fOjpzxJvGJVUJlXknWlPFh04DwCvhIz2gdq/Kif5yRjzkrgGeAwmnsxvW7iD
	8WjTcNToGORbaQ+6OrYwip06THfsal4QNuKJxZJoZ4YKmbiODE5f9N+FsdwPFd2KfzzrG4g4Q5OSZ
	WyOI7hLR758rnUSG7yBDURWi79/CgpoWwZkjwdrofEsQ+mP7VtyRs/oTMAkUsGY1Dq9Ki2l8x2YJ6
	G0X8FhBVmtSDrHKLwOmuDjSwmTU9PORaiQQ2SblFcfw4/MK+6YDIz+x3gisEbQHtg8lsIXMA5JAL7
	15gVBV3830UbjlPObXug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Cle-0003rm-Km; Tue, 03 Sep 2019 17:38:58 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ClF-0003lj-M9; Tue, 03 Sep 2019 17:38:34 +0000
Received: by mail-wr1-f68.google.com with SMTP id b16so18382482wrq.9;
 Tue, 03 Sep 2019 10:38:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sBqHilkfOcB2dgVFp2zrGg4KecQIKZaO1baj+V5ZLeA=;
 b=RTIGjMqqSPreABp4suntba7EbxvzKNIQAB8dqzJgS7V2Itbl8UkYkUWgxiPZuiv1IC
 fcyJSYkXE8pybC1CV8hrmDw4dG7hZO96TFX0O5fbkMlt/zcQwqyRypYWq4qxolV6S2Fz
 6UM3Kh1C9cCqZPf2fF/U/BUqUwJkAWEuWnuZcbQ+lGkp7F3NBfzEOS0S9VvkIXHUA9l8
 8GolaQFOU5xMr8M0VSiUeWs3I8UNfOFOlE0c8OiFcFgh4kCQKjiO9GS1XzHbtkjcxrC+
 F85jHf0IUsORiQDT12mT69iVh0cKXVKxPKRnd3hDPC23/ItC7pMO/Gba46PfZbQ5Lu6g
 X9qA==
X-Gm-Message-State: APjAAAXrJjX2N2lrze1ac8MB8ZUGJpUbni4vm4Qp/SmFPHCjyLTr8re6
 Kfde01sQdQ9gWtHoT7yaWA==
X-Google-Smtp-Source: APXvYqwuvQAdZs7UJic1n+k8xOo79s2Fmbyq5hoWrskhkVJpqSnUJ1lpChQWcIUhDdxOsJpTm6mxMA==
X-Received: by 2002:adf:a54d:: with SMTP id j13mr43522126wrb.261.1567532312034; 
 Tue, 03 Sep 2019 10:38:32 -0700 (PDT)
Received: from localhost ([176.12.107.132])
 by smtp.gmail.com with ESMTPSA id y13sm17111114wrg.8.2019.09.03.10.38.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 10:38:31 -0700 (PDT)
Date: Tue, 3 Sep 2019 18:38:30 +0100
From: Rob Herring <robh@kernel.org>
To: Jianxin Pan <jianxin.pan@amlogic.com>
Subject: Re: [PATCH 3/4] dt-bindings: arm: amlogic: add Amlogic AD401 bindings
Message-ID: <20190903173830.GA30743@bogus>
References: <1567493475-75451-1-git-send-email-jianxin.pan@amlogic.com>
 <1567493475-75451-4-git-send-email-jianxin.pan@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567493475-75451-4-git-send-email-jianxin.pan@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_103833_756742_F5A1F5DE 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Tao Zeng <tao.zeng@amlogic.com>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Sep 2019 02:51:14 -0400, Jianxin Pan wrote:
> Add the compatible for the Amlogic A1 Based AD401 board.
> 
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
