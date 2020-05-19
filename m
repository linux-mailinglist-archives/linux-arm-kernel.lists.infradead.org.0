Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C63C21D8EDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 06:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xE3O2QVSgqN9/OytnmlBmoo2F2Hi3ef+BuLvRDksXCQ=; b=RaRV76ahg0uUNi
	0GbfkzCW4wyA1Ei0mJoajVMRLOsrnELQo2+Qphi9+onjSNqCVvYUjwYSbmqkUO+7sgaGFwO/Sg5PV
	0RbrtqZefCcPgeyVN4Dhpp+lWUg36JSpfP0h7sFb+ec+YBMlbCuv/fdaRUNkyvUqq9yUtPsyeS/yc
	F7/Y2B0L0EOEqZ6/DBQOSwZHCgVLuFxq4DZAhoFObHP+V4UuY5LpID0NuPPt+Fka3jznfC8tHCGGP
	uqsCkJfoS47YApaaZLzDg5290lojLjHsLvlidH5orII6CaYTLJ5AHniqGzoW2dBOvNBCXw/yIoKJq
	cWKyUkOfEu0odW1rYftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jau3F-0002qW-4m; Tue, 19 May 2020 04:40:25 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jau2X-0002a3-9H
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 04:39:43 +0000
Received: by mail-pl1-x62d.google.com with SMTP id q16so5116903plr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 21:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZAPvHj5Iz3Ftjdix142LiJqbE8y7i/6zN2vWrNmBAKQ=;
 b=LmHDw0rfnSpQsZoiYqtW6CqTVcmNwkNRpnVMvAttARPRTgb2pd/VOi7jBnYONPwjOQ
 DJWjTq14ZdnERAHxPHJUJb3XvjKEpyZN/mPAUv4BccaQL2aKkuiKYQS3oyG5xTjho/tx
 Epn4+O3beN+OBR6c0QSts9HBUH+fquYolZQOFZj5znH0wXI/GGpFhz3dDXg3XD+cB7Kf
 Y1iq0d0bdAvETpY5jNZQCwcJ5vw9s7TXRQ61pbLOUNiTBjvXP4gogMl3EN6srVJGeF56
 /ScQNNrRlFNfD+ROYLaEc+UWIL1Ry4WsdjNNx2b2+7hMl5YNeUJ4A5CbN294XL3PVuJD
 S0mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZAPvHj5Iz3Ftjdix142LiJqbE8y7i/6zN2vWrNmBAKQ=;
 b=IcUBnmzOcAqnoiNZectp71D+hXculB6ANzTvZmGSHImHP2aIouXoEQVjVSUC7mBwd5
 5qy2kZXcNzyVrxg/PSuslIY7vI4MzKMOkn5YzN4Yr3asg3YjSIbjBPCbEuIf1hBcZ1Y6
 B7r3wfXilxdNpxfmJ+XJOXyeXAkR0ce7ZC6BcYsrYt4ayhpOCiupgSzLzFoBTmUP4C0a
 lAt6FFfAumT3lRrDuZ8FCJVUPm3ir0d6yrP6NTcvb5PludNmQFLyaGme91mzLKfMKpUD
 VczGre18vp0BmRqw3c/ShaznaDh09V4hgLSkBkbbNVUmP9Al61yc4DkqlxQ6BR55Oq9r
 +/UQ==
X-Gm-Message-State: AOAM531IE1HS2ip5wuCWf9GdSVKiugYLCnRjM/Q7SytBVMiszD+iSFlZ
 ricCiFh01bmJJYeCM2WstqAo6A==
X-Google-Smtp-Source: ABdhPJyvUirdWCddP73pjyN4rpYdUCMRoa6I4NFKNw4qRdUzaA3MpceqCL4XrFgshHH3ywNoKBN9hQ==
X-Received: by 2002:a17:902:988a:: with SMTP id
 s10mr18733800plp.204.1589863179415; 
 Mon, 18 May 2020 21:39:39 -0700 (PDT)
Received: from localhost ([122.167.130.103])
 by smtp.gmail.com with ESMTPSA id s36sm3564561pgl.35.2020.05.18.21.39.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 21:39:38 -0700 (PDT)
Date: Tue, 19 May 2020 10:09:36 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200519043936.w5tivskyxhaholux@vireshk-i7>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <CABb+yY1wJMzakpz0h6ZxAh4Z3OB718f+Wq3RP0R4NZ_U=vRMkw@mail.gmail.com>
 <20200518073514.tjodf6qxg3wjzyb4@vireshk-i7>
 <CABb+yY0vihfQSi=067AUNZd8sHACJ_4CKvFvsoCfweVuL=RD0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY0vihfQSi=067AUNZd8sHACJ_4CKvFvsoCfweVuL=RD0g@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_213941_425822_228EC58B 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-05-20, 19:53, Jassi Brar wrote:
> That is a client/protocol property and has nothing to do with the
> controller dt node.

That's what I am concerned about, i.e. different ways of passing the
doorbell number via DT.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
