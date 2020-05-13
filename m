Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1FB1D1C0F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 19:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/CJqtsXiD8ZgUQmHngG1oHKH34KVrAQjXogYt7OOMA=; b=X6N5slaKGt4VF1
	VxtnnNEU7thQjdzRPSY246PgP6lX2PklmTn1VStB4JUbR0NlcfYJs/1UHC83Mr/KTOMiSRv2vq8Su
	WgAc+Jm+qx+kN1MjuTVv1rCZ9BRd46I45XtSo4UNFoPyUTNaW7LBK/pcIEf7xECLsrt+gY97S56id
	8Cp8lZcqFGv2N/akniAgelJeQLcz0nVLkL94em8eJbZSiCh6qjHPi130ER+rpLCZkYDCfPGiWVx+m
	XlKYiSLomONPHtpvWstG2YpQlf/aUEZrvQZFU7WKrJzt4bpVwKeNYqRn8I4ohwGyITcvqDUJ50C/A
	qkfqIWNLsZ06JySmeH1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYv2l-00068k-RT; Wed, 13 May 2020 17:19:43 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYv2e-000687-DY
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 17:19:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id r10so34866pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 10:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1W5H6dGOEkGWBgNOPpkRvp5ErWI1HdVM+iv3UwbY6Ys=;
 b=ZPo8mjFHFU3+3LCg5UAPIyHuQKwBqAvlznyue+P9a3sjagqcfWfgq5eUmdbmUb28Nl
 iwCp2/OAg7DjV7rIwzvMxnUlRICFVRwYgczrc50GcyN+PQHPXFZlM8TMqhn5GjtmRCIc
 Ysr/M+TpSiupQ2UWw0+IIVVDcNsnXpxzxI6SMMjxkN3ou/6qG5eEFFEBfNPTcDOha/vq
 iPjdKoYrmkbD8347Ie1Wc/bkx714WZGMlPdx+MEsGGf2fH5ensA015poiwWOeuYXxnVq
 XCn5iFjl/18Re052CDgLIkEm2rOxcKVfE2YgbwYtFzdW+XDXfKHnZDY+OVojPX+SWzp/
 9J8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1W5H6dGOEkGWBgNOPpkRvp5ErWI1HdVM+iv3UwbY6Ys=;
 b=Ybwm2ZuMcp9PlBm4tJExAj7NDCnJl8IIPhFGYHNWpzTpgkMJ5SBoHexByY5lV2G0jl
 3hhwpYIflycxn0JVuuawB21Tndi5/TGCoOgI8UcB8UpK1/BPMi6zgZtWjtks0A4qzrBV
 GLZL3rzhe432anF28fEQkdZiCMQH1XeT3C2D3rycrjXLP/7+T1vflXdvzEJuAsR47yt/
 cufeMDGS89zg6rJdSQoa3J2Gf+Toi5hVphwrGV7skj84gT3OK3n61FMhVQAyvfNhfA3a
 zsLTnDiTHhXBdpRvP1tFrNwPPQuU9nn3tvU44/e4sUGmkDrj8ppTmyd3UAszcfhBSMdF
 NQRw==
X-Gm-Message-State: AOAM531ROiiUjYluGouAXfDhmvDm5Xh70fjQfhYBjexLGXFfeh26ANZt
 OmtAsC3HEYsNzQdeabNJEUU=
X-Google-Smtp-Source: ABdhPJyspRTVExTYGHoYQ89DRv24IY2ZZKDrfDihL5ZohDzGqWHfpJ354kTb6N/sqyXWpf7AZ4VCMw==
X-Received: by 2002:a63:b219:: with SMTP id x25mr363136pge.66.1589390374527;
 Wed, 13 May 2020 10:19:34 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id gz19sm15932422pjb.7.2020.05.13.10.19.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 10:19:33 -0700 (PDT)
Date: Wed, 13 May 2020 10:19:31 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] input: keyboard: imx_sc_key: Use
 devm_add_action_or_reset() to handle all cleanups
Message-ID: <20200513171931.GI89269@dtor-ws>
References: <1584082751-17047-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584082751-17047-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_101936_481538_E31EF593 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 linux-input@vger.kernel.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 02:59:11PM +0800, Anson Huang wrote:
> Use devm_add_action_or_reset() to handle all cleanups of failure in
> .probe and .remove, then .remove callback can be dropped.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thank you.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
