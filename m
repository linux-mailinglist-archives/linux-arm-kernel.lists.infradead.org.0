Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F759B6EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eadt0elE13qtGOsR+LsRuW/7EnEAzrd0W1xVafCRTM=; b=RyigduPa9RKLcr
	YVxU8QAOhm0fWHUy3dFuwIbi6718gDCPuriMiOLJqMshT8mS6nuJpYlvRNe9sYr10xcRG/SAthKIZ
	OKC6q7r4EZYyEdbUxUnxeyP2iUUGqMh/jU5bFXdLTp5bqUQzVlU25NGZsI/n/8oLJz06jULyLMBgb
	J27Q99U7l8oxXocRNLZeGNROT6dreQEjUm3zlyigYIbHZQ8tWmBc31cMUGB6MXSH0gpKmft+Vg6Md
	8gaEwFiDrRhvCEDhK085rQdlHb9wzpJ4ENZJU+G0l715flOIZBJdByV0SVpkkyL9nLUXom5FMU2nh
	VEidh5lRGtXAAx5SqlSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1F3k-0007Z9-BC; Fri, 23 Aug 2019 19:17:16 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1F3c-0007Ye-DM
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566587788;
 bh=PYwkSQaOmLlDfTgr5PJmdiL8V1pQsxSwJpG8MAQVgyg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=YgfYXTPNQ5ltmVjxsFFqY82+kUI8q9lCQx9bvFru5vAib/RVhfchu+BRb0fnK76xg
 Le7GsDRywP9h8wBI8FY8h5Z/R9fW0xG4R8PXJYBqobf4MFcUEVoKYbxVgDJjpopgIo
 BGsGSC7g+hbimTcBoA4IpfhuONkBVeXGyQI1YJek=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Lrw2c-1iE3Xe1dHy-013hSn; Fri, 23
 Aug 2019 21:16:28 +0200
Subject: Re: [PATCH 3/3] net: qca: update MODULE_AUTHOR() email address
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 "David S. Miller" <davem@davemloft.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
References: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
 <1565720249-6549-3-git-send-email-wahrenst@gmx.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <60e92c51-814b-3811-84ca-e7fe09ab7442@gmx.net>
Date: Fri, 23 Aug 2019 21:16:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565720249-6549-3-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:sGxjL8zEZSy6uAXZQbkTxhTionkpuKiE9UjSR7eY5KK/zpJ312I
 32uFhHpggm581SuNGBf+NJwcThSR8nlqnlyMaWAdOAGXAft+sDd9UnEfPrF94RYDkb/h7xY
 gw110VdQVfKNK7HNOuDR0GYzm+eAM4bJtFvSjWZKVcZbJw9QbwJ+T6GF2exSz9kexHVYjXM
 Mn+8oF/SgmZK8orQKXQjA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DSphZvEX7Ak=:lbvhUWokq0KTsgkSjAmzdy
 /3CsZxUGB/OwsYuUPawPCU55QdIw0YBQaN4APSujX8fJT5qZRrvC0r8yp+OdJnvTHA4v0LrhC
 KUVdHHFsZdG5aw9yIKntRSyeBaMzm6TzXr2MWYwxnW2RUJ+cAJft/3t8vkTOd8rSKHGCdiudV
 edpuVadHKxnvZjlftpFihSRKVp1gWVAD68/zWhi2nAjljtUrQaqH4vFgFB82YqNqrswr5AYK1
 5sO+H+8BggkzaBEWrCUVDOMSqHxqrKqXztrxWY2aRSCNv5KbNthyaG3OFhz0i13tWtkFAnpTf
 ijA3jIPl6EdutMUCiH6vRiG5gyaR2NazTrtuRdjkUDw0HR/nu+Xu8NwTRQbw84ipQKssXLKLH
 oFqTVH0/99lSg3DXbVT5/eR7kuv9vF4rISKJzwzkINk9xFK77sMp6mE0n5cM3Oq9WgJRAGDyU
 VsTnBJWQPZXTsK7IcdUSM4f41cYQP/MRm1KZLCeugzFrvrq3jG37zGXC0Lgg5Su1aEoGrrRQc
 7oLkhPOe39nbcJoTO7lHrhbpho7556CyH36aKhhAe4tO9im/NU6MCJCf3bQ3uBZQqSKwNjaPc
 l0YaFwYs17I1d5quF0zIZiK6TXEJl5NH4/9KFA5tlI0ehpzNLei2RQtj0JCgUuvHBVW+iAs6o
 POmZzUs+3ctDGa/h69dIyQ1MWR0zYQLQ/AB8sQngVuE3Oe1HcSIynyuTkqCNSc6FzrRoAmh/+
 Xq9uxw8gyp61vivaXaLtCyrYhDbD+7stRWWo7VGgWxWza6gtFc30PPivt/aDiVTjYUEkkuJQV
 yKcNgwtTXICLHUhEho6ZsXSQpQUQM+eTre0TXQt0gpat5zHpjNt8a1nzUNtzvScAFfqWT3OeO
 cshBE1poeebgNtyJZ/mEOlvncguz6uFPHUfg3ME6P9TithIhm49eTIgU5ivMLkT/xcreb/rSe
 oVbAIYjjhwMZ711Qr920GNAuCglkrP5IU5YbR5Er3sYFKG1vRHD3k0cRWSBbDI5O0bQGYa6pH
 ZlhxyTbj0XNKgLHjWqeyQQ5Gk6Vu9BUUdD8xFz3WjiM26L6if/SfNeXXz+i0ok5cXXtqmZGGc
 Ew6QdeCfvaiPtHpOLC4F0KSMN2A+KJsxU4xlPE7AWMKdUWTF/usPzyKj7Sf/AbpXB1fuUA3tB
 YWv0c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_121708_782814_B327C3EE 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 13.08.19 um 20:17 schrieb Stefan Wahren:
> I2SE has been acquired by in-tech. So the email address listed in
> MODULE_AUTHOR() will be disabled in the near future. I only have access
> to QCA7000 boards at in-tech, so use my new company address.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Gentle ping ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
