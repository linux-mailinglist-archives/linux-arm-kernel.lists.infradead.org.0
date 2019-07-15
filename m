Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954C0682D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 06:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5JFKVLVgJPhFW6WMJcSpOyA5uCXNu+3TfmFc3SU6yo=; b=NlnD4/IFY+Ttcl
	41UAIHPdxcLiSAFWj+lcoBBtJGsUFjvHhChv2xncnkhn+yJAcgLoBFfLf4Uc8nbKhJ0O5wtAi8Z/t
	DvNj53KzUQ22VHz+lRfxLOYV/PC21HPtkKJhBIeZ9dvmuGqkXMUseaWJL4YIuN7G5AbL2AqqLsuaa
	0ahC5VSHGs10F2EaNcxzq+qpKdHXbsszR1Jb7Bv9cK0dPlEisnG/nzYV35Bk+YN8Hx8bHg4Fg0hmj
	rNagnCMsC2q8EdYFssRy8FN6WNTgS2qLDjt1Nuobqjpt4u6Qej9kc/b/jvqmTYB9YStZMTsNSMPXF
	blJOtLn9UlIn/TbCIH8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmsQq-00045D-Ej; Mon, 15 Jul 2019 04:17:44 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmsQd-00044h-Li
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 04:17:33 +0000
Received: by mail-yw1-xc44.google.com with SMTP id b143so6929328ywb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jul 2019 21:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:subject:to:cc:references:openpgp:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZU+N+jdHFGLm83s+Rk1MKxPtLrSDeM3IVCQzNfaWkQc=;
 b=tH0GJeQ0Qsos4Kd3Jn1sI+2rqlqRqd78CBBlGmEY08eAsMLyduNekysuXcKb3uFlwa
 KLYQaZzNdRkvHKmcpZhJ/GHR1aq6jpvFJgW/+OVF0J4HvDHcGpVp0Ot5WkCE5bkMatkE
 e0jY5TSrHfe2LGdgzwMearR6W5AOtCtWyFg9qPY9ATC+HwtVfQCPanaXoXb4zAKu9IYQ
 6ZprZsP7CR2eMNZUY6rK1ZmWrIz9AumuIuxA10MYnigbkdh1L0vjOIBmfC16lKulHw7E
 QC8EJDT2XVlnfd9CdqMbEquokiGhNglfDRjYsdflw+LPxSXKO6gxgTqJWF0fR4FCmCoi
 U3jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:subject:to:cc:references:openpgp
 :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ZU+N+jdHFGLm83s+Rk1MKxPtLrSDeM3IVCQzNfaWkQc=;
 b=epJHCiUfQegiETYA7lIlsxeEQCFpVmQfEVettUBkg5cz9nlzjIlI524Q4mCGYG/MIN
 oB2Z9prLZjcc4BStHUPv5sT2YzKSzEGMGTTiUdONNcG47LyGCa7OHo+4GnhSJObit/oh
 HyXlE4RvzCEWXK3fbROn27GltrC0IfprLdQPA5zgovMrOC8RBeqwhbN8thoH3o7jQUG4
 h2ktr81bHhDdUWnCEYi3KnqrehYqeAcPzLMHPmI0oL2Qm3uI8eU8hUEYzvL+FsYm8Scq
 EfOmNpp86qJN/HD9BtF7zYitGqB7DevwtqTdduCH+WqVrxLoGSSZEYDcBBiTTzBTrW5N
 ywvQ==
X-Gm-Message-State: APjAAAX52r9+Xy5yoTN4ntIbQheEmHtNk5oHVsfteQg3ewbisLJXh74w
 DgCZ1RRbElAjTDHGeY36O6o=
X-Google-Smtp-Source: APXvYqygnT51jLI54Y7e4aJEwRF3BA/oh+jUvTlqNkFwBwPCh0tQZ4TodICNd7QYqSTmcFpz2ky6VQ==
X-Received: by 2002:a81:ae0e:: with SMTP id m14mr15251245ywh.308.1563164249752; 
 Sun, 14 Jul 2019 21:17:29 -0700 (PDT)
Received: from [192.168.1.74] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net.
 [75.58.59.55])
 by smtp.gmail.com with ESMTPSA id 206sm4035932ywu.34.2019.07.14.21.17.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 21:17:28 -0700 (PDT)
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
Subject: Re: [PATCH v3 04/24] dmaengine: qcom_hidma: Remove call to memset
 after dmam_alloc_coherent
To: Fuqian Huang <huangfq.daxian@gmail.com>
References: <20190715031723.6375-1-huangfq.daxian@gmail.com>
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
Message-ID: <72c45b14-f0c0-9d1c-0953-eea70ce513a0@kernel.org>
Date: Mon, 15 Jul 2019 00:17:27 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190715031723.6375-1-huangfq.daxian@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_211731_738843_70BED1E8 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (franksinankaya[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, David Brown <david.brown@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 dmaengine@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/14/2019 11:17 PM, Fuqian Huang wrote:
> In commit 518a2f1925c3
> ("dma-mapping: zero memory returned from dma_alloc_*"),
> dma_alloc_coherent has already zeroed the memory.
> So memset is not needed.
> 
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>

I don't see SWIO or ARM64 IOMMU drivers getting impacted by
the mentioned change above (518a2f1925c3).

 arch/alpha/kernel/pci_iommu.c    | 2 +-
 arch/arc/mm/dma.c                | 2 +-
 arch/c6x/mm/dma-coherent.c       | 5 ++++-
 arch/m68k/kernel/dma.c           | 2 +-
 arch/microblaze/mm/consistent.c  | 2 +-
 arch/openrisc/kernel/dma.c       | 2 +-
 arch/parisc/kernel/pci-dma.c     | 4 ++--
 arch/s390/pci/pci_dma.c          | 2 +-
 arch/sparc/kernel/ioport.c       | 2 +-
 arch/sparc/mm/io-unit.c          | 2 +-
 arch/sparc/mm/iommu.c            | 2 +-
 arch/xtensa/kernel/pci-dma.c     | 2 +-
 drivers/misc/mic/host/mic_boot.c | 2 +-
 kernel/dma/virt.c                | 2 +-
 14 files changed, 18 insertions(+), 15 deletions(-)

How does this new behavior apply globally?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
