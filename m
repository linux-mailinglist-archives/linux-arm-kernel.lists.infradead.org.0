Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C386130DFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 08:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5YOuLzhgayHa4Xf9bfEnmk8XgmSKlkgELV3CMljP/Q=; b=hgzq981t3EO9bh
	RWUxrMiTkKGTZ4R+HiKcd+fneVMwby5dGoBdWuoB58RK+/3PIAhizuetDsopb1vEA424r6o0tS33i
	fwcaEIWx+hWUAfPwxoSMzPc19b9OVzz98ozwawPAb/ndSTnP3/PimqGXkSxnpGpUBpKMfGifbxdfq
	Ipb2Mk8P6+/4QTG+lUy39reo0GVNeuNNMY3ubMc0tOEiC3aMn260rjr9acnH5fqcLPTz68AEklgUT
	1Lw9lS99BP1Ms8sFFkD83/GYm6jUVkISGbDJwiZaKqZO2fnuYH0GiNr8OY1OwYt5pKbqqe+k1llYT
	orDLc6LP+Jse/7M7kjoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioMr9-0001y9-TU; Mon, 06 Jan 2020 07:31:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioMr3-0001xg-Th
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 07:31:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so26563707pfs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 23:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RJxkFJPOk4NXRduzmH/EPxDE/CojMKX6nSv2Cv6HZCI=;
 b=guBeeF9h7hO0kllEOPxa/svmSgTrGzPsjP+d7PYa4em3Z+CN4u4o1A6L5va+rmWXBo
 gFcDfENZ0PHEhQInq+h2VNuy/BUR8w8l78CplRkuQzEHO3eZdAsAZvrW1dVL3/apMkQV
 gsUuhe57vPcmNT7a3chXNhfYFKG2OVbMVm+NTkexPTV+zsOoz5QccdSVdEM2NAfnqJ2X
 jewcNPnJ0labD2xMWP4se5gEYs1rw1uOgQ4X7JuejEIcB58FWeu1YAqhP8r2WW2S7dyi
 q47yIbt0Z7LJl1/QnC00UgWWQNeHG+kQ8W03Qff2dFGaOcxSzlcOMPXODFVwxnChNh6l
 RteQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RJxkFJPOk4NXRduzmH/EPxDE/CojMKX6nSv2Cv6HZCI=;
 b=ii4dtYePgp3DXAnE/SjPaHvrfnXlYGPNCvTFU9vcabk3cfaMYDrmbpzdS4gdp/DfE2
 0cboc+qVSV3WiFOO2NdW0Sl0/wCz/Z5qWZLJjLVcAStqrI2PfFBeHepO5RTb9w/DxM3v
 eCFFc+ndeS4q67pTbpFOukNVzrzg0t4wfZVdauC40ujHw2bd/wgizCxCrMRs4R+NFcnA
 GbiBZEYh3shEQJpaA7LBehj78sXdBQZN7rdBO2sVrx5h0d9aEumlnizXo9hmIjYxAx2Z
 SJNrYNjPUiUq3Bum5hjPAp+HeoDtQd4BPh9w4MUY/nJjz4JjyNn8nUAhFMzGtOS/AGFe
 KNow==
X-Gm-Message-State: APjAAAVlEchirHgz9m6WHWerCE3DpNoPiWApVQxXf8vE/nx5dmCxVNDz
 igDrpnOHzYNgToeejSrJLiLQYqszbwE=
X-Google-Smtp-Source: APXvYqyOO5ovbIh9XmJsORrDjsz2C22z/ci4/3OWzknjCNQSXMMAfW/K01McsN3aX8am6wSHGM+WqQ==
X-Received: by 2002:a65:4c8b:: with SMTP id
 m11mr111865915pgt.208.1578295873320; 
 Sun, 05 Jan 2020 23:31:13 -0800 (PST)
Received: from localhost ([122.172.26.121])
 by smtp.gmail.com with ESMTPSA id k21sm63505992pfa.63.2020.01.05.23.31.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Jan 2020 23:31:12 -0800 (PST)
Date: Mon, 6 Jan 2020 13:01:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: chenqiwu <qiwuchen55@gmail.com>
Subject: Re: [PATCH v2] cpufreq: brcmstb-avs-cpufreq: avoid potential stuck
 and UAF risk
Message-ID: <20200106073109.ndm7enzyznquqps5@vireshk-i7>
References: <1578228650-17157-1-git-send-email-qiwuchen55@gmail.com>
 <20200106055637.zq4icl5klg4wpvkx@vireshk-i7>
 <20200106070910.GA17897@cqw-OptiPlex-7050>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106070910.GA17897@cqw-OptiPlex-7050>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_233114_092461_9A3A10BD 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 bcm-kernel-feedback-list@broadcom.com, mmayer@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-01-20, 15:09, chenqiwu wrote:
> There could be a case as the description of this patch besides
> brcm_avs_driver unloads. Since cpufreq_policy_free() will free
> the mm of cpufreq_policy at the last moment.

Ahh, right. Please fix the other "policy" thing I reported and resend
the patch then.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
