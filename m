Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552D5104484
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Inz7Vn+oSK+hsaPYgRDC5ZXVjhyfUJzqUncPoGig3zU=; b=RvK+5b1WjC/ErF
	AQ/DxBOGjyUGRwjAGAwbDLvCUoh/82d7Y1uCq8wZZO9XzA/vQkYLl+Ky1lAEbnzaCBk7MhrpEyKoz
	TxmEYACuDvhoPo0230/csew+9P1SCTKEArMRhcLEmDav8Yj6ec3r4aM4j/Fh8Nk4jyhMaAssS/VOt
	ERFlzPyeqLmUWz0qsljo7QQxhgXeZn7rBDN1HN2LmvbBgYS339y7UkGiNVbv7wPieyBMwQA/7AoZH
	kPPDgOJri/QCH+JwXWnjgHXkfU8Hu7VOxofbRosFJo24OGu2NJAMmUdSiNuRabCxJab8Ii/rJA/Rq
	QIHT9cRMt+R7c6y8CnhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVwJ-0003Cd-E2; Wed, 20 Nov 2019 19:46:59 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVw8-0003C1-09
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:46:49 +0000
Received: by mail-ed1-x542.google.com with SMTP id b72so584622edf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 11:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oxEM2vdt7/U/FNIfeuvzJ9elmjyMDsJD1vxaJ2fUtOI=;
 b=WrddtF4R/lFC853GKj7Dd7RzfOT6YpZ1GUF5a9E7wjXuFFN8MKM7RhIB+8Hs5fzeIg
 PcFZZAIgCLKYAM0nHNUvYyYGxu256OS+sFPtigA6OGKsKMr5JnUQ0TGVU9+fR0XKLGyR
 mHnkTW7EPOZ4+svqiLOsGNAL4YD33ESdZfLG7Zoi0uVp+z4FZwX8TMrPKP5sIDk3JFd3
 2SGIgae3CdqOVhDWxCOow+8hwjWUl5Iv6kOjWqWzDPnW3WIWfBE7d3n/ttyKSGN9Yjhs
 9bbUuW/6/OJp98x5NHd3iNS8ja+u68ErBXiEUwEp7zyjQzP1ODAlP+UwTaiXxZo9lMGe
 QDiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oxEM2vdt7/U/FNIfeuvzJ9elmjyMDsJD1vxaJ2fUtOI=;
 b=T3FFo5VvSBZy1Nl7krdBY7yjUyK3zP7PJupC8611b1WnLMvu8vI5OYYORk8I8SQsty
 9uS2OnsayrHr7j55W+dkjSlnPaceBhgh69znmd1Qc5GLmkr8FpON25V3RyLy2/Z+taRI
 KEz+15cWm1SsoNn1yV4BoPnAjyRVKKRGLkRbqDFn7e3lbFkIMpHqM3Qnmkdwm1LzssCI
 RuPolClGLDaFqAW6wpw/w5lfvOUFn5PddoFUqpWr5Xm3kV6uFKV44dUiOhmDCCRPECMr
 c3ybqREab6XamRzFDxp9UQKjlpoXrSayt7ZkddZti0f+ah9ysAFOU11OE7Bt26VtDTEe
 Ri2A==
X-Gm-Message-State: APjAAAWbkPv4txJeX1ijzfByj5xzRyfuZ9UHVISaLkcTbf43krTcnzQh
 Rpixx/E2YK7Nx3hk1t1bwqBVeDD42mdotirufNybFw==
X-Google-Smtp-Source: APXvYqypnvAPJ++PLYZ2U6aQOk5u/YILYozemKYHGTd1uN8FTstQuqto4KVAyP+G64ayeIzD3lKig4KV9XKFgV4HkNM=
X-Received: by 2002:a17:906:b30c:: with SMTP id
 n12mr7405055ejz.96.1574279206840; 
 Wed, 20 Nov 2019 11:46:46 -0800 (PST)
MIME-Version: 1.0
References: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
 <20191120191648.GB4799@willie-the-truck>
In-Reply-To: <20191120191648.GB4799@willie-the-truck>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 20 Nov 2019 14:46:35 -0500
Message-ID: <CA+CK2bDeXP8iUYF2GC=9PttTug1E66=z0h4PSGBn3Gr5t3NHzw@mail.gmail.com>
Subject: Re: [PATCH] arm64: kernel: memory corruptions due non-disabled PAN
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_114648_042915_5078C4C9 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, steve.capper@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 alexios.zavras@intel.com, James Morse <james.morse@arm.com>,
 allison@lohutok.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, info@metux.net,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>
> Thanks. I've pushed this and your other patch out [1], with some changes
> to the commit message. I'm annoyed that I didn't spot this during review
> of the initial PAN patches.
>
> Will

Great.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
