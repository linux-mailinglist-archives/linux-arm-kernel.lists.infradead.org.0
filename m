Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0F6E48C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3nnFpIsUXhmoEw+OLGIgvnHaLPU/kCRPW2e7YzRrER0=; b=GQzV18FbdsLcSgUdRILGoQ+Db
	CFS7zqj58FuMMD73GMtd2InX3IR9OzK455rA3w3fi/7JFdxbDkQs9qfh0zsUzvZAv92WjCPBeybk8
	mWE0L4U5nUb2SX/Se4zg1elY1r2ML8S+B4SiU0AYQiI3zgOm9pc07V8oNM7drDnJLw2vyQsk3qMf2
	Mflcy8dVrT+/1tL6AvXYa6eKS5/M1Cx4rdIlaz0mRP3pSL05epUWaaMR2d8gmfOMuG0/bxAw+5M7k
	3ykSFyVhgSuKDb3N2d9rBkFUDbZoh0E4zD1TSNq4iqzesuyO48zLB8dRNEcprxUaBy1MtgjxGO+p6
	e1DLahtQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNx3c-00017C-Kj; Fri, 25 Oct 2019 10:43:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNx3V-00016e-Kp; Fri, 25 Oct 2019 10:42:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id o28so1753785wro.7;
 Fri, 25 Oct 2019 03:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=BW9HOrChNvPqeSlqhew0nSz/3RdIb+BlRHw9yj12kQs=;
 b=rZNsrGJkEz6baJxIGhnfLAIuLIy66mHV8Om4QjTQAXUq9KiwT9xBWX/UDDhA6C3LHP
 X6UP4Yb9XpzrjaWBR6IxROkzQy9UGksGrn2s55vJleTpmE7OyvhjnYTtrYDZFQhHKSry
 Roo5T63x5M3YILo7Rf686yMxQdPAaQKtTpbMRr/QyLsIxijEPW12zgBcO7UGcsPQXzbq
 5XAamls/oo2NUlXRVaHiImKhFKpw8ihQ+PBr0ul0E0neYF1lCepnQUnbPSt4WqJDR8Q/
 Hlp/WxXsVA3p43e4GgJm5uhgNlbM6Jn7Xquvc4AkR7sml8etz38+45uQoNKFczDnFmvo
 p6pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=BW9HOrChNvPqeSlqhew0nSz/3RdIb+BlRHw9yj12kQs=;
 b=MIdrNen/KYjNfWf/jo9A8QRlVykajwAKT/++mAaCprTyQ631ap8Mp53TM/ABqBt91j
 Wq3+f12Ea61bPAwcewYHYlYsno892APgv/FRFLtiHY2aJsg29NMpDGsGcT5xSnWbzefA
 nT1XHG9Gt+IvAb0+hESevFjUWeqg3BjgOK1fJVgrpyGzWz0Bt5R8fvgc0OwMf7jVWPk7
 CfacVCDUnkFYNTU6/yQ533XyL3PyRCmH1j7xdSU+T/gCg1P3t6Nki7HJZh3lxEKaO7OF
 XivcyjYLpHNwO9acdtypDgbWWFORy3RnT9CVeAw18uCfMeJ777SklO5Q/y5EIkkNWAX0
 qMjA==
X-Gm-Message-State: APjAAAVT5BQ94TDwCbZrCiZ3fxy7eEaycxr/5tHqPc+V01ZrmPRXtq2P
 MhBCUeACPWezolTRYVw058I=
X-Google-Smtp-Source: APXvYqyMvkWhYPa0FkQRBs5Mnkx3Hc2IfRfgowjw35dT0W4NL90v2jXRI3Y8BcAsWOMBWnA1kitYiQ==
X-Received: by 2002:a05:6000:18d:: with SMTP id
 p13mr2325133wrx.396.1572000171736; 
 Fri, 25 Oct 2019 03:42:51 -0700 (PDT)
Received: from localhost ([94.73.41.211])
 by smtp.gmail.com with ESMTPSA id j14sm2189614wrj.35.2019.10.25.03.42.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 03:42:50 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Fri, 25 Oct 2019 12:42:49 +0200
MIME-Version: 1.0
Message-ID: <7e062766-6d2c-44b3-a513-f976bda40704@gmail.com>
In-Reply-To: <87pnil2kc2.fsf@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com> <87v9uix1sv.fsf@gmail.com>
 <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
 <0edb55d4-3bad-47ac-9d29-8d994d182e67@gmail.com> <877e4wj7ly.fsf@gmail.com>
 <fcddc3d9-f36a-4b7b-be3f-ee720fbacb05@gmail.com> <87pnil2kc2.fsf@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_034253_710353_52D94506 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, October 25, 2019 12:25:17 PM CEST, Felipe Balbi wrote:
> hi,
>
> Vicente Bergas <vicencb@gmail.com> writes:
>
>> On Wednesday, October 23, 2019 8:31:21 AM CEST, Felipe Balbi wrote: ...
>
> Do you want to send it as a formal patch or shall I do it?

All yours. Thank you for reviewing and proposing this solution.

Regards,
  Vicente.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
