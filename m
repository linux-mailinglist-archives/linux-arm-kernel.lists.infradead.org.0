Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAF724DDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UEDdo6uqc6t0HoNwd8e8xFz39ety2S5/plgmlslYxcM=; b=lTZTJrO1ESjHjcAJ+cyYqd3Yg
	pij6wTomOUf0w3lHcG9oOK2HSy22ToqWkgL37/plbf4IGcztzrYdA8CjlYcHFnvQsjJr7vhx+2KFk
	7yugWF+t28yr/SkTi03+9AdjmBjph8mFr3MtF3z7Z4DRxrO6lsKjbGM2CACBSWqrXgt5czcqpX6Eo
	RojIgn++mRaXCLhWJI0CZR+fmd8Jr/psjV/YQuYnUwxbf+YpMu26xcLg7SNsbfxteRvHZuaFZWGpc
	NQFlbmAZvJSywsiHimJbEqxZhL1peAJpFjjIQQWRM+5XvhPViXZ93UYZPnke7Jph2alQ02b3VKe0k
	By8RJRV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2v6-0006xA-7c; Tue, 21 May 2019 11:27:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2uy-0006vN-Ca
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:26:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id e15so18187239wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 04:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sGys3Iol5dLtdbxkyfPp6BlafjDFlyvcTnF3At5Y2mY=;
 b=xa+Fjufbb1lWW90PQCIg5/2U9zdLS45WWo284k/724/94OQArbEEdhI/a5ceLz5BqQ
 HDJxwMdbf9ZqeaCxJr4pSLAdMLyyGogqX9KXyrPMQcznwEaOzNvZ5HGhNMgRoCPUgCr3
 Di9zgN6DxWACkL3qM55JjMKXdPnxBjt0hHo3iFfupTGIC84YrZNvrorSSol8pCumbxfm
 Ix8Ry0dJi87fXjYcZWVfk397WxTeISlVtOirazL2iLflcXfQ4gMDA4TRw+EizoNnwIS2
 JdGGoDXwcpPOxIgiefi0BgUhoI+jQVf6XANV3wPxfj96YHNXPmGb5DfQIiwtQ2gHOxCP
 YxiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sGys3Iol5dLtdbxkyfPp6BlafjDFlyvcTnF3At5Y2mY=;
 b=iAiO+A/IcXp5nV4vCjbD48rVd0vtH+e+Ie68YiFQQFtCaPzpvK3P18iMSbYv2l4jMd
 h8ERUfcHpcZGUZldhMxP909BGzs4clfSZmcWZ0N9nmSDNBMG04/jD96YBugX5CT7+UV9
 Ygo7VVgwtHzTW0B3xA7jOErS/GAjosj+Qascdnp4Phc58pz1DA4G/NYQS0/6J1z2356O
 UpFzgyQV/aHtmMOpeD2LqXJgOgCpx77q60unGadN3sArZNDiwnOS67kSMRHhDQlvRGQ7
 4sq+y6XONWliNiK8uPVRN1mJjyZgGvwzEWAx5PWzHy3Fe/rXTU/YpVT9/sGQ+J5gPgy1
 8eJQ==
X-Gm-Message-State: APjAAAW6GhMf/qD9bmuYgk4OWlXFIvu8xoFQ2f66Jsm67TE8Ijj76pQK
 bs0LHpXpzrGbSxuNC87rXH6GXyJlPU8=
X-Google-Smtp-Source: APXvYqy2jCv/tcKI8+hfC11XMcNd1yvILVIneSyvMJ+o/81tlqCa0r3Pmi7nB08kvuSCuvJysQ6YWA==
X-Received: by 2002:adf:f34e:: with SMTP id e14mr30178782wrp.215.1558438010594; 
 Tue, 21 May 2019 04:26:50 -0700 (PDT)
Received: from [192.168.0.31] (abo-99-183-68.mtp.modulonet.fr. [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id
 b10sm49421373wrh.59.2019.05.21.04.26.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 04:26:50 -0700 (PDT)
Subject: Re: [PATCH v2 1/5] dt-bindings: soc: amlogic: canvas: document
 support for Meson8/8b/8m2
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org
References: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
 <20190520194353.24445-2-martin.blumenstingl@googlemail.com>
From: Maxime Jourdan <mjourdan@baylibre.com>
Message-ID: <5b2d9cf4-aaaf-706e-3a0a-96cd3c003e52@baylibre.com>
Date: Tue, 21 May 2019 13:26:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520194353.24445-2-martin.blumenstingl@googlemail.com>
Content-Language: tl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_042652_426731_4B02BF3E 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/05/2019 21:43, Martin Blumenstingl wrote:
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Acked-by: Maxime Jourdan <mjourdan@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
