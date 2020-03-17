Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5291885D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rB2X9auC4UsIAMF52Rszboz0BiFVtEfhscTBzmpfhFE=; b=V2aBwMSL6m8h4l
	v9MkWjWmAPYKdIINZS6VJecnpIKpK/qtVkDEV/kP42JIaXexyIbIX82aW9zO3LaPA9B2D7Vdno3vD
	7r3wFdGQ52W/JRob48R1Z20DaVtDNAsik+k40r3PS1NwFDya5QA79ligwYZJZ6OwJKeSYL+zK7Yen
	ixEKPZR6CerjXPfBGS09nFLfP8RMxnRuI4ULoCw/yLbI+PUryZbwMWJOUG5kRJNEHe+NJ5yyJmred
	Cun1hRB2kZ2+EyciQMY9120xMD1YojnsR7kNwksPIqmQrlNo8STSKW+F1VpLI+kLErQpXdYaP8HSR
	rRHkGorDQC2asxiMecVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECL7-00049A-NI; Tue, 17 Mar 2020 13:33:01 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECL0-00048U-Dq; Tue, 17 Mar 2020 13:32:55 +0000
Received: by mail-qk1-x744.google.com with SMTP id j4so15812671qkc.11;
 Tue, 17 Mar 2020 06:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=wL0p3C5fBDyWra1AZHD6SjlbA8CpqssJuFeOi8qSncY=;
 b=H0/FH31v2bSBKeTvBtUBisoMnoZUvAuQcdlCr9ybScAu7w+v9VfQgXN1IpISvdoBY4
 Fu1jvk7u2ZzC2t/kL8q+2K63j9/yZx8v4KSSh/+vx1JN97lqeC/nv8vs66enpP1klb7H
 OPDAAZR91L0osPn4gx4kIBEUN5isind4wurJ9cIZpjj7PGuHwPJ2XKO8aCZJU4nA4tIs
 2NpZLdtplcEi/8NQ9nnXQIzIHiLM3d3O7FqE2fS7bABsQd3KjBEJdiKfOeyeZ7CErBXP
 n6/BAj0fp2acXiJfT9QOVBbSGsN3y+9wwaqpRHsAaRBF7V3dOMNnaW7/dC7vDAWWSh5s
 jAwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=wL0p3C5fBDyWra1AZHD6SjlbA8CpqssJuFeOi8qSncY=;
 b=A0Km70rk9bqlJOyz7Izcx7JJNOoYNYxM7d5T1L6OpF2ts2X4XuSRYSKBlTPv7xvr8p
 871oWUtnnWuM/BTn8GUDC2Ni7ozfbKZDbuUwKkTFSpB15hzNmkOM7qOgQvnUhG6OHAHI
 hAMFvWPOaDak0/Vco1NwemS1ZkT1o6EJr65yD2M78ANsWUEsswdhQZpYSebho9ZE31KP
 6kUbWeOr5xkDl2IybIMhiZjHenu7iYoKI3COPczlRARVrchBHUqrEDHDcscV05NjeMrp
 fa8LDg50ayV4XUGQ+FizI4+TRLM2XeN2pd017/zJm416Qa+tiMZnZja/ZTPUCD06Tgu0
 Cnig==
X-Gm-Message-State: ANhLgQ2SI2p/wybdGj6AGeUI3pQKyInlEneu3dyaOQ5s02PoVhq/sQsH
 J0ZsbXci71qp46mWABkG8yE=
X-Google-Smtp-Source: ADFU+vu0lPLLkxTBDg3kdYLBZ1PHggNdsoXJGaPWHiSHH/SZyqqZbxTOnsAxk5Qvqg4dYMa8ztcWww==
X-Received: by 2002:a37:2794:: with SMTP id n142mr4814331qkn.336.1584451970138; 
 Tue, 17 Mar 2020 06:32:50 -0700 (PDT)
Received: from ubuntu (ool-45785633.dyn.optonline.net. [69.120.86.51])
 by smtp.gmail.com with ESMTPSA id m1sm2308396qtk.16.2020.03.17.06.32.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 06:32:49 -0700 (PDT)
Date: Tue, 17 Mar 2020 09:32:45 -0400
From: Vivek Unune <npcomplete13@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
Message-ID: <20200317133245.GA1932@ubuntu>
References: <20200313230513.123049-1-npcomplete13@gmail.com>
 <7846021.K4VeDc98hx@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7846021.K4VeDc98hx@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_063254_466739_1EAB8740 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [npcomplete13[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npcomplete13[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, akash@openedev.com, jbx6244@gmail.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 01:54:52AM +0100, Heiko Stuebner wrote:
> Am Samstag, 14. M=E4rz 2020, 00:05:13 CET schrieb Vivek Unune:
> >  - Add Hugsun X99 IR receiver and power led
> >  - Remove pwm0 node as it interferes with power LED gpio
> >    pwm0 is not used in factory firmware as well
> > =

> > Tested with LibreElec linux-next-20200305
> > =

> > Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
> =

> I've applied this for 5.7, but did split the patch into two.
> One for the addition of the IR and a second for led.
> =

> Please do similar for future patches.
> =

> Thanks
> Heiko
> =

> =


Hi Heiko,

Much appriciated. I'll make sure to do that with my future patches

Thanks,

Vivek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
