Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801221EE168
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOsuZSJui/t8+NRGCRED+IYdcXPYu3r5U5NUoZTHU0w=; b=aQ2nHcAXr7b86t
	ZWID/3vrZytlRBVWUFOABpl2aHwu3M3kzCIOKPeaeg0qxsBRgVea3QyZYZpKxDz1i0tZ//Cs2qk6f
	eKdT02jRUkTJywj1vxX951/+xfUDErbw8yUPIILf0+Vp54OhP0XgJYvmJnoTwaDjvAqEZa1SxP9P4
	gwfKV72TUKDJT1RjqEhBGpcDC5i64lrYP42vdzc81/eaUcr+tr0MWIHv2R3i3Bf6gz7Gjosbu3EyO
	TsaD23TYVk0N4zItGYASdJz+31gtx+Y6epjnU14QGkmUR221c5wUMQ6N/nB4vkJB9BZEzMdmnWACA
	odhvMreFEOmJgP/STjVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgmJN-0002qO-9L; Thu, 04 Jun 2020 09:37:21 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgmJG-0002pp-AN
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 09:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1591263415;
 bh=LJN3Kf4vQsasf3c2M0JNJOkqWVCOQTQQEFF500nJIbM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=q0b+yMclK9v1qNZ9aVOp1gbpfRs6a3LbUH/nffGnDaWZCXRFIzJYDOnfgseyZiixP
 35s3nqIetyAwQdqbrYBh3FJE5FQ8xtHPWjPseP7B9xZqlkN1jVDRL63znhCxGHOK5p
 RX86hAw3Uzu6KFDPgMsg9ki6griWjxQRPteHCviM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.94.220]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1Mmymz-1jICyv3DZH-00jw0c; Thu, 04
 Jun 2020 11:36:54 +0200
Subject: Re: [PATCH] dmaengine: stm32-dmamux: Fix pm_runtime_get_sync()
 failure cases
To: Navid Emamdoost <navid.emamdoost@gmail.com>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <873bfb31-52d8-7c9b-5480-4a94dc945307@web.de>
 <CAEkB2ET_gfNUAuoZHxiGWZX7d3CQaJYJJqS2Fspif5mFq4-xfA@mail.gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <f21a82e5-810e-b153-651a-9f347dfe0216@web.de>
Date: Thu, 4 Jun 2020 11:36:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAEkB2ET_gfNUAuoZHxiGWZX7d3CQaJYJJqS2Fspif5mFq4-xfA@mail.gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:N3PPV2/zDO+XFyf+JdBnUlRlfc+sl+YC3VoGzVNwgF6oOISqYp0
 N/B7w2TFwK+uJeBNhNE7BkKl12aa7AM1nyeCOtZLDtPyUIr8XNfQm/PTWxyJpeaFqR+So1W
 Q0J4BAgPlSlhhfYcYbvSLbW8OPrPAsbEYbHtYAgNH75ry2HZYqAZlsfqhdTpfia9193H9V+
 zo741yPmncRrz1pf838Gw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9z9yiXxRKJI=:I4PDmBw3lL71NuE6T+52vB
 Iz9oaE11/xW0K9GQt7GJUPUVMLMFw3U+LiRYsXwCtPuONMFFyqRZVK+P6yhzQikx+oBlJRWwJ
 H2TDZiERzlTMQAA+O86CVSpKQvxxDi9cJZ+hMmT0psW3SYX4ZCnQXS1lQP0jYFfq0cztOpF7G
 2d4sFWX9vOGMS0KrZHlPsHejrqNGS0icLC0T8ZC+eXEv3Ynro5RNduwgxQ+D7Iejebmm7OQ+2
 f3ihgRQTiPOuFJEZ5AQfyc6VcO5dZsBs2ZgTNFpu37nlIxUluphnAmT2+sEO0me7PoVvzkTGj
 +LRkaiK3ezT7643nOde+LhooQv/av9RdSw0s5ktCsB2/SXMMqyFGuZCMU6yg2tnoy/Uv8LqLu
 8Idmf73FJ/eDCDifWWA31hu+2/E8IqRnIplDfoRvmvlUDUVySIYhw9jKd8vQUW7FJMsVu6Xtw
 7Za3ONLGcWK0o5j0piIUuSi9q9mGVfXXnRuhJ4zLHhCJYxJweBEi4wmVbUbJqhiBWwCto5t/b
 J61kG1gPgSGf/t66clKrv7E6UVjH6IftFr2BMQ1VGeauZemB/Jq9YxTZDrEGJjGF25g1ZElvQ
 pTL4yxSnkFpBZoX+EugOUGsiERCGOvxOuUZgXKk7MpeyjPHqARoo5qSOFDTZ2WxIftMTSbsgr
 RErZlQYEK3fcboVDm9SDxMtWqIKv1qBhpdbu99ChSIMK39/Ylb6++pqw3M7NvEpZToRBHWQiU
 SQ0rKKi6ffFlPhSTWsE/WT0+awQ0ChDCEOsnOlWMUNmiuE581MIwUlhb1oWwdSgr1yUu5bU0b
 Ub1yJVtL0rcTNzlmWvQbPiEjo7w+USU1jLzhykShUvWBX0YU6cqBW17GiFmLHZ1e+QL8+TxHM
 sGHUgy2JNR6RUDQpZw4HyXkVf9SjYFS9vZpoAim5neE2jzUgM+l3VDmDMqJGuOu8wPHJVTtP5
 F4AzsC1095kDq7Njhb9TO9g2v75mc4VM8XFLxedOI46ryJDujTtEHLrq81R/RSdo28baYafzn
 Jik/EM3sjzoSD6kPpWdiLwOH3Cz6/Ax8wIsE+cXsfQDjustFC8lBc3v4J/0zCfqcLmxXXV99R
 gi5yb1OR5vlXz79TZC/b60zV51OAytbgK0vhZIQfnyaHbGwp1cSLTzNmOpBH6PjobTycmmIC3
 VueyrS6Ia3EQk4A46Tx/gwJM9os6+24HN7OYmwpu/a7fS0Yz/GHEF9L63iqXa3xPykw+pvjxG
 yBahHtqgG/BbwTCE3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_023714_692392_DF2FE9CC 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.78 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Qiushi Wu <wu000273@umn.edu>, Stephen McCamant <smccaman@umn.edu>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Please stop proposing rewording on my patches!

I find it interesting that you got into the mood to choose
another patch subject variant.
https://lore.kernel.org/patchwork/patch/1252131/
https://lore.kernel.org/dmaengine/20200603193648.19190-1-navid.emamdoost@gmail.com/


> I will consider updating my patches only if a maintainer asks for it.

Now I am curious if you would like take my patch review request into account
to avoid a typo there.
How will the quality evolve for such commit messages?

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
