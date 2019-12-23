Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93BE129A43
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 20:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZEUorF5hZn3WpwcWCbaSh7rCGg5pNr4uDpg1bdHXGl0=; b=VjRbY71NCqXfZ1noGSyH5GFjXx
	Tb0l+aKy5xvpZzD31o/54+1CcFFptirlLpLBw3H9rYE6NVn+aQo6CGYA99JZhz9RaHB2AGb/IhdT0
	HNa82aPpyUAQdJvxjOpR3jsd8uR/Kixen/+KT6EBE9VA1gJEhPV9K7aPDBjtwwNjc6/5vS45VtDIz
	kCFxx/ifjFbZdTAvdxQBxXyxO+w9leqv71hCyXJxuMoU7vNYLMp94K/gNb/BlrOmKdoAFH+oD9VtV
	no5wvQWTEaORmId0yvQgT/5FjOrgmyv843KtuLkRTpxWh3Cvaev/rGaFmcYeyQMXrhqVkMYZEhT/C
	5JHD8zng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSy0-0005xs-26; Mon, 23 Dec 2019 19:02:08 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSwp-0004q3-27; Mon, 23 Dec 2019 19:00:56 +0000
Received: by mail-io1-xd41.google.com with SMTP id x1so17070488iop.7;
 Mon, 23 Dec 2019 11:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=5WjW3vD2cx3BUd8M8ubJSzV7k9hmJV/MjBgFD4V36+U=;
 b=SfdIJwjQd53LNcv5/C/cr6A9iEyMN7mtz3lYF9IKVOqEJF4K/GVWvOWQb1Kcd791wO
 78vVQCVClSM/UdNaSwbCDwWR2jbpSt6wIcGgF6Fmr0HxzOX+mFetSE5kyXy1IHA0B2my
 DoJQiMO+vOPmtRaInuM2Fwt72TC1vzyknqOYRgvk/JLMKeP2yIX4+ZuP/VDK8u4fzpYj
 URmGVaJLjdvXbrgjsALnwGUzPTgVQ7B7JftpvLnvVhxko3Eh3aiesJmQE3pannLAC87a
 RehuChGYDJbbt7hUZrQ6xHXdrCoGMGIZWB6SbrjJ5yzrICvMwvOAcdqO+6iyhfQkVpyJ
 graQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=5WjW3vD2cx3BUd8M8ubJSzV7k9hmJV/MjBgFD4V36+U=;
 b=ktWTJJL8mArWd/j/kWTEF0vqrYwEBHAJiZeLetYPydIQJjC7E9SHO2Pk491nIcoCdD
 sx7C3/gKZU50fktpUc1sBUcsUuY19SCnv+d1YTK6t4Z00QAoYhDpmxcdgbG8g0xYDRU3
 rwoli2jp7w+uql7B+tpKT2Rfx1X2Ce6MgmvJ7aFJew9/atHsEQoKdK0iFH8KU1t4Uwhd
 5u6mLfN6lfRhLG8AzLExmZ9lxAH3WdM02PRY4FfKO2rIK7Jw0JYEi0l3SSpgAXh1HDrY
 hKJhbqKFn1H5kYm48TJumtsjLU4mMOpa1nnFUwCYCmdG8kTgmxxVyaa6GVvFS+Zj8QhD
 68Yg==
X-Gm-Message-State: APjAAAWGhNF1Y1Rp01VqXeRGBo352L2CyHCicpUdY6xSp1cpa+4Kf3lK
 73CNEs8Fat8l2ozW+n+pstmvISqB4DqwP0a7TMQ=
X-Google-Smtp-Source: APXvYqwaFZg7aCu6nzs0ZutPtYsj9R32aQwWIh0wX+JYOxpu64SuDTLXdlqTyVyvXRJJzV59D2yYDwSiSzYDcnKN32Y=
X-Received: by 2002:a6b:b941:: with SMTP id j62mr22074614iof.168.1577127653723; 
 Mon, 23 Dec 2019 11:00:53 -0800 (PST)
MIME-Version: 1.0
References: <20191223185918.9877-1-tiny.windzz@gmail.com>
 <20191223185918.9877-2-tiny.windzz@gmail.com>
In-Reply-To: <20191223185918.9877-2-tiny.windzz@gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 24 Dec 2019 03:00:42 +0800
Message-ID: <CAEExFWu771PdyjqHa3vF5W46ch_YecE6Dvv8iF42r5799yuF7A@mail.gmail.com>
Subject: Re: [PATCH] virtio-mmio: convert to devm_platform_ioremap_resource
To: m.szyprowski@samsung.com, joro@8bytes.org, Kukjin Kim <kgene@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, agross@kernel.org, 
 bjorn.andersson@linaro.org, Rob Clark <robdclark@gmail.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, mst@redhat.com, 
 jasowang@redhat.com, iommu@lists.linux-foundation.org, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 virtualization@lists.linux-foundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_110055_163369_2534920C 
X-CRM114-Status: UNSURE (   3.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please ignore this patch.

Thx!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
