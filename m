Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5076648172
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMIDYaIjD9bWhgNEBcCInX7w0kPqmct6mo5mAPMjpzs=; b=J49ijJV/GzsMKm
	dL5WpF0UkgnZMiUkU/tQuCrBX9r3kC3PvMABjP2ypT7OFEOSvAQNz5wZT1BLPdlTmVh87yP96DT2S
	Hxf/y59pCe/NmmGxUteTU9J69+Mf2tJ/A75VdUfS2B0to1GdfBqUyMOuwV/652SpCF1Tmvumw6NRL
	N5KGv/80diDSADR1iDRJ6LOr9BsAjyZo1w6kHoQ1V14qHL2skiXRCNPRSTMUXbNzDTwP1vfRZTsht
	3xItJdm9JlBr9CQCLtt7LL5cqKF68wOJFcBhG0w6O2GQyw//JvAFg2rMTqyuwf1H5MyknZDrJ+9y5
	tcazWZfCTTzGTPj+G3Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqK8-0002yc-I5; Mon, 17 Jun 2019 12:01:20 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqJc-0002lV-RH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:00:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id q26so6307020lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WMOobivDUXfkCWR6pjRCOHNvO/6DOagtbl2NP8XjONo=;
 b=ff3wGzEwNI2T2elXEz8FCLpI/REFBeKdKx2zf6MqQfZBtYK8vQlnaHO6bhamdvVbaP
 51fYwx8k+ppTt8z1VI36YDSJNGbtFO+fTiFqKgvlMG2JH6SUrOZmWHHSEe9pkz9Grroa
 U2ZIf1eaVGT8yzhCo/XIfkSXBL1h+j1v9D61pnTFL71nCFMkcsR51HSCAlmUz8ps5ioP
 d/IhdsPtOi99gXcabRDsLtf7+augejt0ZFYXwBWyXLYXTHSZAy7thsLRuoFgcNTx6fn3
 shOA5oRdZ0QqKpetOlDgNaJQZ4jn++4q7/fTwYKK8EaTR9ZPII5fH12B/64j1hiND+PZ
 yB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WMOobivDUXfkCWR6pjRCOHNvO/6DOagtbl2NP8XjONo=;
 b=eJA4RzQt9jMfKQWeKzsr5fyetJqciZqmx5itliA/GF+Dg2QKu95cyfozP8B0l7Q56v
 7fsdty/Mt/eOZves1tgJGP42ZtrafPqrenaaqp7ds0wLrcoexQ4msNIYBdO+qawU3z1G
 rFnxLt4pXtNvHr+0wreFC5C1hfZLQ81XyZ9ue+Lx6ekGg8xZF8RtmPbO5dufDNNPfXZV
 GwAIT+5xS5Lxvk5qX0viatZ9xaKjdyfuIMBzlfVcbDlwYG6y9PitFUZYsetjyQXGHI9t
 m79tMqOjwzMXwTDfY4WFITkarqaiGkPT6ZTfcjpf/oZ4gFzBAThkU1aEp0MwOuta2Ef0
 DsDQ==
X-Gm-Message-State: APjAAAWHu4BxAWncb+SDtODAq5oDL1Kxib6tKhpI6mH71pOejw/kxhKF
 VyNWBdK7sIHfrGYW+F2oYHSTkQy+L0b4Cw==
X-Google-Smtp-Source: APXvYqwj0ZEEUC11brx6LjTF61ISaIIIHQ9Cv7PlQ0vk+DY940LjTUESF8y4LCWjPpp5YS0si7V8WQ==
X-Received: by 2002:ac2:499b:: with SMTP id f27mr29899101lfl.88.1560772847314; 
 Mon, 17 Jun 2019 05:00:47 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u9sm1740980lfb.38.2019.06.17.05.00.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:00:46 -0700 (PDT)
Date: Mon, 17 Jun 2019 04:41:05 -0700
From: Olof Johansson <olof@lixom.net>
To: Jens Wiklander <jens.wiklander@linaro.org>
Subject: Re: [GIT PULL] tee subsys for v5.3
Message-ID: <20190617114105.fyosfx4gddkhqav4@localhost>
References: <20190527062854.GA19419@jax>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527062854.GA19419@jax>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_050048_879922_48475E52 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arm-soc <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 08:28:54AM +0200, Jens Wiklander wrote:
> Hello arm-soc maintainers,
> 
> Please pull this update of MAINTAINERS with a mailing list for TEE subsystem.
> 
> Thanks,
> Jens
> 
> The following changes since commit cd6c84d8f0cdc911df435bb075ba22ce3c605b07:
> 
>   Linux 5.2-rc2 (2019-05-26 16:49:19 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-maint-for-5.3
> 
> for you to fetch changes up to d7f3f7d847044a111d4abadf9c69aa54d0d05167:
> 
>   MAINTAINERS: Add mailing list for the TEE subsystem (2019-05-27 07:59:03 +0200)
> 
> ----------------------------------------------------------------
> Adding mailing list for TEE subsystem
> 
> ----------------------------------------------------------------
> Sumit Garg (1):
>       MAINTAINERS: Add mailing list for the TEE subsystem

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
