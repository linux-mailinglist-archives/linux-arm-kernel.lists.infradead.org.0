Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A6BCDC8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZS4fPZ/fPmHdSJa3rc9o0MNslqiTFD+5NDS2Qk1l9o=; b=rxvgTPgh13bVij
	0zOdtZKPrs2gpVMsUjSniYZ6W753Koma3Iwm5EKz303Ij5ZNhOGWQ7njbrBimMMyd5u6dstCvSjVL
	M+tXtaba3IFS4LG/WCiJwDOHrVLyupQHsYMHvi+xNYxjnd8V7UTvmXSvqgfqy3aLgFjU1fO5PdAzx
	h/l9KKtO/5DhYF5VOHQl5LL20fyXVk6xakOgGCiibKxOEla8eUviuf1TBoUzRZ1g8CqP0TKfLyE/J
	2LKQYcoARQTyN33CRM4KuQF0GBX4ATZEn5qiEbxpxYWuSaM1oN5WfjKgKCliJ0kgLTHu3AsJs2uFJ
	SXQLtxBTW1B6Is8Rph+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNhT-00071h-VI; Mon, 07 Oct 2019 07:44:59 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNhL-00070c-Pk
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 07:44:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570434273;
 bh=2dSyWOWDhs1Oyl8TZBuUtDp4oJHExe1QxDI3Ydw7q0w=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=cKeNR7wlq0sX/ZyvPoodQLRbTe6Ckgh5v9ZTe5qIPYC5i356rUG1jgt6Hes/R8dGo
 MPdaRCdpmuDkBSkiPYhFcKzSyWa6kegKjsnEKRzGAAAkfbRQavt3TxH90nkvXghHRV
 afjZpUXIZ2zdAfiY/1F27x0a4w9bBPeaRTKoBrGo=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.131.146.95]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Mf0qf-1iSb1c2php-00ObRG; Mon, 07
 Oct 2019 09:44:33 +0200
Subject: Re: drm/imx: Checking a kmemdup() call in imx_pd_bind()
To: Navid Emamdoost <emamd001@umn.edu>, Kangjie Lu <kjlu@umn.edu>,
 Stephen McCamant <smccaman@umn.edu>
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <540321eb-7699-1d51-59d5-dde5ffcb8fc4@web.de>
 <CAEkB2ETtVwtmkpup65D3wqyLn=84ZHt0QRo0dJK5GsV=-L=qVw@mail.gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <1b86ce88-ec28-0710-b624-e1eded248da2@web.de>
Date: Mon, 7 Oct 2019 09:44:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAEkB2ETtVwtmkpup65D3wqyLn=84ZHt0QRo0dJK5GsV=-L=qVw@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:/b5pm8brQdCRG2IP/nlNNxu5f7gmuqwSyWK18sL+S50SmvWN3E8
 eGDTILF3Agu2zseK1HJaQHEJ4KSTYmHK7LtAcwYT8eMi4oKVW66CiB850eM3BnZhxJW82bM
 cR4NePe6MXMtCsCl5X86jJOY6uUHwFU29X9nOeJ8i67P/6o7h5XgZmty5WdLfIrYIEIu0QU
 AL/KDiNTwZ5CTfFlv9aJQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FTj6oU+ZtOY=:8RFGc7WseGgVIaMeUNoBO1
 MHz8z7tN1Pjgb95obL1IOhYomg5lr7XLbiFbJju643XwmUquXa/NAAxklUCY9CNvaDnQUh3oN
 +w1zZLixcxC3o1+UmbLKOxvUS6cqvUdlRk5DSJSNEysXguA4QHXhoGHicGucHznXcqw7nrLAn
 Vr1hCyrnY1kAwh5uRZqjeihlzG8PXRD3ejwQdwbjfYuN3kCfiBqnQLJ4vk+tn+l6v5FOwQ5Cp
 bmFpysfUz396BNK8Uoc7LXu5fw4VAB2rjqy9Wxea4E6vsm307G8EG4W1KN5XWBhxQ+g1dpXXJ
 9DISUhSFn4l5qba55OpGE96H7ai29C8rXY6TvSYmJ/VqI5iprrJvRu09vC5M7gRzgD6ka+Bgu
 Pt5R0Ixz6wIpV4m+RxFiwO5fEtsNKZ9jvcwEOxWCodE9JZjfE37mZVPqkc5cBxGdAoZB96W2I
 t+t0WVhkuo059ANzIM6nwvy9Aa8QNXIUrT0y05GVyuOzij527i44ls2OwwexLVbXxOWxymSfU
 pbRQhR2pPhLOCW+ZOy4714H+Ag/TV+IlrxwjU7YjH85iB2O7k4QL6PVHccO3+4DWo/It+FTjv
 /NmO4zl4wBiRS89JlMsRXKMFjLMSP03igrrpdqKPsAIBl40l51mm7Bcpwzk3oS9kPzh+OnR+b
 KlBxW8+UkLbmryUWZ3/Fa9cDYXrw2JKImVVExxhNgNWGvOHa+Fg7ujrMLgr42KfkzMVUpO1wG
 0BrfVQKJX7THwdwKXcA51XeUQfzUgNxWP7zleMk3oVHJFIEvaZLuTUZZVU/86J6UwF+upuBQN
 zIMXaGN6dhjDhTtd7Rn+0WC9s9OdxF8W4FzzZxJUmdOjmxNHd4uYhTaK06ffI6BnD7Rij2isz
 tHjJSxtqCr9RzQpI+tU4qIthT6NKV2umqAcdBAGFhoYX/P1iDVBDyDOgtynRqigc2KkUJLyuc
 V5Ri9oEU/DRvYOxmpycHeuasRZ0hGaJewtHS941o31R3PnIlrs3UGAZBhUgIbYzwgi3MNOhuJ
 VmlZRVrlHuo55vDof5hxhJRwnZGeeD/ehYbV74PCS7fl+QnyWYVspR2ACNQSx3O8BKuKXtZJ7
 BlFAgZP5fRelS0rrTiLgeSAAe03sqqdy/YpIGP2EHrrmTf1Ih5IHV0m3e4i8HlB4p9gp6ZPFZ
 GDjY3IbJcJ4Wh3af0pjCfXTSco6sqTOA9oglvUO1rgucfVQ4LrGWwl/yqCK9LDXIjzjiFEyIe
 l4nK3e1SeWyY96jv41pBQXe45icGAeoa+CokMaExmH5S+jDsZyJDKLcTxKd0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_004452_167947_8434953A 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
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
Cc: kernel@pengutronix.de, David Airlie <airlied@linux.ie>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, linux-imx@nxp.com,
 Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> I agree with you, kmemdup may fail so a null check seems necessary there.

Would this place (and similar ones) be pointed out for further considerations
also by the source code analysis tool which your software research group
seems to be developing?
https://github.com/umnsec/cheq/

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
