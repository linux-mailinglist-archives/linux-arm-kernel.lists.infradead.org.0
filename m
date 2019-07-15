Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148C269837
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 17:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u37cCfgOhK7GaL8apnYxdwEPWOjPBWGnm40M3DEJCAI=; b=t7bxGiV28J44Xh
	kC0Tx7ansHk73DhYX6kEWjNLOvk+phtXzS9ZOq6AM4RNJ46gJixdug2bdlm3VuXN2llzgV13ckMvM
	DIXFkpvTyeG15YEFm0E2j0VK/pWlxO0ks1vpUUJ54WfyDeMvRxEocoQxf1jmOa4NutLxDy9bIu/NI
	nqbgVT1y7G+Wj7jW7tIU+EeMULU9aBy11oHph4+MVvpCJgHX/xRg05QVPZuaXurULIIJ07DLNR2TH
	B7OtscwQO3dPDEb/D315A7oK1dxGw2S9gyr5ngfrJEEWD4AcGvfBAvGZhXS0thbrifCeaGGBejF5B
	cqq1U4rY/3Qbw0pXFsrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn2jD-00086b-Dq; Mon, 15 Jul 2019 15:17:23 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2j1-00084w-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 15:17:12 +0000
Received: by mail-qt1-x842.google.com with SMTP id d17so15959560qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 08:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:subject:to:cc:references:openpgp:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E/egqeiPmeR+wTmeoTlfpr/9l78nB77vFY1VUyDOmQo=;
 b=fdAmHhIIQ5M5U7SJWntEaFH5x/7ZSNGV/zJLzvCc6oy4ze5UqIr+ewk8gIlu3LdeuD
 bSVEyGeFqfynptNWDeMxR39rY9enAHf0Fv1HLodHpi15tfBmQUEXzcug2siLXm7QiiV+
 nvoFtKO/+CJy9ikan9o/6tAq9hW4sFK4dBkAI48pIMeG2iYFU+HZnSor5brUWCEWjDSW
 IqydetLko55QSdg+D97dxHsmuqyEdIZtiX2rG9LU3EpWaMWJpfmlcAWAVyFkW3BRMDCt
 wYMyell5jTZlhr0A5x34LrJqIB+pLUrHN9vlFu3BF4RmKpB8O9BH0bblbyQTl1+semWS
 Q6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:subject:to:cc:references:openpgp
 :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=E/egqeiPmeR+wTmeoTlfpr/9l78nB77vFY1VUyDOmQo=;
 b=Y0Qfwm6dBHPIKupsgDp2LXni2/xyPdIGy63n0vJaIlAcqLtuGqHVUD3jFKmGq+j6Wq
 P4bnoz1OhjtTgZUvdM9FXSLN1vJj2FJZdNzvbB/uDF5WmASdMVKg2WSq+dy300/UlrKo
 TEhdLBykx/+AIWFoCRUQ7sR8hPA8K1mbpQVWLEEFHUDaozWivGeuvnT/u7gUXHb2Hinp
 pxy1VD8hKXDevTAXbSRUcu/vXLg15ZYZEdMHyMAQXZnRjl7xWlEQL0yhpBowLey0Rwl5
 CL1K7IhBgCEXuihycKIzSemq+LHDgzm+OW850WZ6ygw61uU2OQ6Szzdzs3MTvA3dbkE7
 1xFA==
X-Gm-Message-State: APjAAAUF/y3Soezy2i/EALLBM/Wultgz38fdD/B3/3ZRPLCeWr6l/B8s
 JsWhIhBeDAPVB5XiG76MSKg=
X-Google-Smtp-Source: APXvYqw+Jj/zJuzoP/WabIMtvOAfiFGap4BYM3yfG3iS6kDjoZ16oLEcwXvluS9Yi+h/DsFIMYTcnQ==
X-Received: by 2002:ac8:1106:: with SMTP id c6mr17077663qtj.332.1563203829090; 
 Mon, 15 Jul 2019 08:17:09 -0700 (PDT)
Received: from [10.84.150.27] ([167.220.148.27])
 by smtp.gmail.com with ESMTPSA id q17sm3683624qtl.13.2019.07.15.08.17.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 08:17:08 -0700 (PDT)
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
Subject: Re: [PATCH v3 04/24] dmaengine: qcom_hidma: Remove call to memset
 after dmam_alloc_coherent
To: Fuqian Huang <huangfq.daxian@gmail.com>
References: <20190715031723.6375-1-huangfq.daxian@gmail.com>
 <72c45b14-f0c0-9d1c-0953-eea70ce513a0@kernel.org>
 <CABXRUiQXweOLRTpdyhx9xT_B1VBmoSoNm=_+Qr4prmz7u1QRFA@mail.gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=okaya@kernel.org; keydata=
 mQENBFrnOrUBCADGOL0kF21B6ogpOkuYvz6bUjO7NU99PKhXx1MfK/AzK+SFgxJF7dMluoF6
 uT47bU7zb7HqACH6itTgSSiJeSoq86jYoq5s4JOyaj0/18Hf3/YBah7AOuwk6LtV3EftQIhw
 9vXqCnBwP/nID6PQ685zl3vH68yzF6FVNwbDagxUz/gMiQh7scHvVCjiqkJ+qu/36JgtTYYw
 8lGWRcto6gr0eTF8Wd8f81wspmUHGsFdN/xPsZPKMw6/on9oOj3AidcR3P9EdLY4qQyjvcNC
 V9cL9b5I/Ud9ghPwW4QkM7uhYqQDyh3SwgEFudc+/RsDuxjVlg9CFnGhS0nPXR89SaQZABEB
 AAG0HVNpbmFuIEtheWEgPG9rYXlhQGtlcm5lbC5vcmc+iQFOBBMBCAA4FiEEYdOlMSE+a7/c
 ckrQvGF4I+4LAFcFAlztcAoCGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQvGF4I+4L
 AFfidAf/VKHInxep0Z96iYkIq42432HTZUrxNzG9IWk4HN7c3vTJKv2W+b9pgvBF1SmkyQSy
 8SJ3Zd98CO6FOHA1FigFyZahVsme+T0GsS3/OF1kjrtMktoREr8t0rK0yKpCTYVdlkHadxmR
 Qs5xLzW1RqKlrNigKHI2yhgpMwrpzS+67F1biT41227sqFzW9urEl/jqGJXaB6GV+SRKSHN+
 ubWXgE1NkmfAMeyJPKojNT7ReL6eh3BNB/Xh1vQJew+AE50EP7o36UXghoUktnx6cTkge0ZS
 qgxuhN33cCOU36pWQhPqVSlLTZQJVxuCmlaHbYWvye7bBOhmiuNKhOzb3FcgT7kBDQRa5zq1
 AQgAyRq/7JZKOyB8wRx6fHE0nb31P75kCnL3oE+smKW/sOcIQDV3C7mZKLf472MWB1xdr4Tm
 eXeL/wT0QHapLn5M5wWghC80YvjjdolHnlq9QlYVtvl1ocAC28y43tKJfklhHiwMNDJfdZbw
 9lQ2h+7nccFWASNUu9cqZOABLvJcgLnfdDpnSzOye09VVlKr3NHgRyRZa7me/oFJCxrJlKAl
 2hllRLt0yV08o7i14+qmvxI2EKLX9zJfJ2rGWLTVe3EJBnCsQPDzAUVYSnTtqELu2AGzvDiM
 gatRaosnzhvvEK+kCuXuCuZlRWP7pWSHqFFuYq596RRG5hNGLbmVFZrCxQARAQABiQEfBBgB
 CAAJBQJa5zq1AhsMAAoJELxheCPuCwBX2UYH/2kkMC4mImvoClrmcMsNGijcZHdDlz8NFfCI
 gSb3NHkarnA7uAg8KJuaHUwBMk3kBhv2BGPLcmAknzBIehbZ284W7u3DT9o1Y5g+LDyx8RIi
 e7pnMcC+bE2IJExCVf2p3PB1tDBBdLEYJoyFz/XpdDjZ8aVls/pIyrq+mqo5LuuhWfZzPPec
 9EiM2eXpJw+Rz+vKjSt1YIhg46YbdZrDM2FGrt9ve3YaM5H0lzJgq/JQPKFdbd5MB0X37Qc+
 2m/A9u9SFnOovA42DgXUyC2cSbIJdPWOK9PnzfXqF3sX9Aol2eLUmQuLpThJtq5EHu6FzJ7Y
 L+s0nPaNMKwv/Xhhm6Y=
Message-ID: <245ffd79-316c-e985-d1da-2ccea6d29636@kernel.org>
Date: Mon, 15 Jul 2019 11:17:07 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CABXRUiQXweOLRTpdyhx9xT_B1VBmoSoNm=_+Qr4prmz7u1QRFA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_081711_562458_296B7A34 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (franksinankaya[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, David Brown <david.brown@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 dmaengine@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/15/2019 1:43 AM, Fuqian Huang wrote:
> Should I rewrite the commit log? Just mention that dma_alloc_coherent
> has already
> zeroed the memory and not to reference the commit?

I'd like to hear from Robin Murphy that arm smmu driver follows this as
well.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
