Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD4B1E9E66
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMw2nOertOSMJqOcqJOwZKoZCbxBC2HhSbxAtzbgExk=; b=WptrCwAd7F3Tt3
	qDsrA0KCV+FiC2DxV0AWEVoE99iyKa1i3/CWLu0j+gUecEtmlilLN4CY3qdmzhJ0HMKVqy6xWwcrb
	NIUH4ffBgEAE/GzHbtc2l7CTKkS7AzJPUEUsgApD7zWBLcIou9BcD0LMt7bypLEduWXYGbnzXE5ik
	xHr6XrRA/6DbzgESweyvHIpR7O4vP0o/Qd2vx2vrelqP5/45FZ0koS0+zVsdQpJlDnpAAL5EnGhvZ
	QR2xK1zoKmdAzI9Ag0chEWyF3O7fGjrel4fOC4u7KNamPO8N4qf9WeNLhoxblIuTyT60r3cmJ9tON
	7A4zgQeiHrc4CB7Zallg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfe9k-0006TT-95; Mon, 01 Jun 2020 06:42:44 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfe9X-0006T6-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 06:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1590993732;
 bh=tKOtouNpgU/IF7WGTYjqhR34wOq1MycJ9MCg4fP3yVs=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=MxFsclfTklOvaRoBK4ZpfmjEsH4rKjNWoWg9GXNkRlGJniKXyx9X1r5W1f592aFb9
 hXKDwa7QpW0zAc/MDNzaWyi8uWwpw8gHwXuz0LuhEySP+STXPfg5xeRPvFj857fAoF
 6eBsxXuPulNtk4bP2TEV+SJlGYyGNtztaQM2JWfQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.133.32]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MK6mD-1jepCY3k1d-001O9T; Mon, 01
 Jun 2020 08:42:12 +0200
Subject: Re: [PATCH v3] i2c: imx-lpi2c: Fix runtime PM imbalance in
 lpi2c_imx_master_enable()
To: Dinghao Liu <dinghao.liu@zju.edu.cn>, Fugang Duan <fugang.duan@nxp.com>,
 kernel@pengutronix.de, linux-imx@nxp.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200601061640.27632-1-dinghao.liu@zju.edu.cn>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <77448b13-9233-20a8-5e68-a8830314c27d@web.de>
Date: Mon, 1 Jun 2020 08:42:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200601061640.27632-1-dinghao.liu@zju.edu.cn>
Content-Language: en-GB
X-Provags-ID: V03:K1:ZkPZbkfzFinZrQLxVG6GTQz9drdW40WO6R+HEO+80m3z360YPLt
 lC2xGNp4QKSxUPFTqy+nMLUriY2fC4sBSmeJy2ucbJOe6exqWQ/2VJsgae/WKh6rkIibzJs
 bmLh3fZcvL6GdSgH6PkfdQlUl115g9YSGPYTVhiCuHHmQuPSQfJQV7xzWP/8y0ubf+LRUNV
 E2pyvcTsWtCfBazMOWWpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1rs281+F7ss=:HXxDFXERtaQu8mjySKm7So
 kNWGCJ9MoMLW/c2yQ9Ydm3XnCHV2tKbS23GI0TLLww8v8mY+1A1Q7FpBKkfLEQa7x6J3dzW9K
 pbNoKXJ1IKGEAmLT1CeaK9bnmko3JSLXQR2aYaZQ9FyPejtPZE79Z9/SDrAHlmteuAVymmPL6
 KC3vrygE3AwU6RZZYY6TFMHNCwmZzk+8cC2Y921AgrlIvHctZtX810ZhwS7xIWHZvQ9K0TKaM
 wAPkgA6SGMwWXu/WgVhhEsOUgfuKHS4Sdb6GLLXqk8PLruf5tTfhx6a1Rg9qls7r4ep2E71aM
 fhPC/ppKH4Ttv1ndehO9FGAW9uvDadrgELgl8X21BdOCyw1Yry+tQtxt97wYm7JGnAemzv5ux
 luEYmJVrP50TgAembUF3NRrWQLcn/L72ELc4FsUuudOC/PTFzIpSPbgBnWXfjgXMNpG0fMyDO
 R8l2hhWD31v36MXjuo0PS3XNa4vswgDn7gTPS2xsTqZ7V7/jcu228EOAvLjyeZJpcThETmk7n
 lDnOuzWFGquUgintiLkvJ7neKbDDRF/tDyZmLdXHu7cvogKByQMGQelgDffowsTRawELfkwKC
 CZL1ohvxUqT9GcngO0AtSTvXx1FNi4o39XB8ocSWPIoGTAYtO4HoznGXeN5mdy/ZUspQX7yrY
 mdgdD8HBiTQKlXxDhJXLB6d7PuKid0O9fPjZBTQPtZCnDkqIpgqWOzrCW0/WCgh7JTBFKOEQu
 /GUt5gxQPVE0PTrmYTahPvRIJQCycBSkxhR3VTF/IooRnl3La2+9kpXKrJdi6zvdgjNlIy246
 MdEe0Qg9+vxI79kYFXL6v/KIxxonl6vTKhZa0tQ4GR1NurH/DFutZjdMoSB6YPvLOhallPmLV
 DThl757gX2+54X2JZEa5kdqv3FE/f4iuQ+prl75qPBNMqD/jUmVwteYelklD80WGir8WH1O0o
 cxB17R2gT/EfZahPpCcxHrpdo5nTbY4IRCZZkkQ/i/CJah1nQNCpRbZArHxVdCDfxt8BwItab
 WzaFFN6CtcTaOzViQSAiE+Tc5806xu1LlG7BulgDmu5ogm74TbcQ1dyoLL980m/IbV8un575B
 KuoiIdPQq+Y5ovm0kU0ccNOJIlimy9Dr38oH4GsyHY9CIFWElHVAC0SshUPUHYF6jnH43d9rF
 2c7BkMROt404+HWQ+zaodEtXvAnP7ALIWhksIND8tLy0EcgbZ6/KkII6/C2B8jh9Bo6Z0x1/d
 Shgp55VP8CBBwGeKU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_234231_837580_3D08C0BA 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.14 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.14 listed in wl.mailspike.net]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, kernel-janitors@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Kangjie Lu <kjlu@umn.edu>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBwbV9ydW50aW1lX2dldF9zeW5jKCkgaW5jcmVtZW50cyB0aGUgcnVudGltZSBQTSB1c2FnZSBj
b3VudGVyIGV2ZW4KPiB0aGUgY2FsbCByZXR1cm5zIGFuIGVycm9yIGNvZGUuIFRodXMgYSBjb3Jy
ZXNwb25kaW5nIGRlY3JlbWVudCBpcwo+IG5lZWRlZCBvbiB0aGUgZXJyb3IgaGFuZGxpbmcgcGF0
aCB0byBrZWVwIHRoZSBjb3VudGVyIGJhbGFuY2VkLgo+Cj4gRml4IHRoaXMgYnkgYWRkaW5nIHRo
ZSBtaXNzZWQgZnVuY3Rpb24gY2FsbC4KCkhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgYSB3b3JkaW5n
IHZhcmlhbnQgbGlrZSB0aGUgZm9sbG93aW5nPwoKICAgQ2hhbmdlIGRlc2NyaXB0aW9uOgogICBU
aGUgUE0gcnVudGltZSB1c2FnZSBjb3VudGVyIGlzIGluY3JlbWVudGVkIGV2ZW4gaWYgYSBjYWxs
IG9mCiAgIHRoZSBmdW5jdGlvbiDigJxwbV9ydW50aW1lX2dldF9zeW5j4oCdIGZhaWxlZC4gVGh1
cyBkZWNyZW1lbnQgaXQgYWxzbwogICBpbiBhbiBlcnJvciBjYXNlIHNvIHRoYXQgdGhlIHJlZmVy
ZW5jZSBjb3VudGluZyBpcyBrZXB0IGNvbnNpc3RlbnQuCgoKUmVnYXJkcywKTWFya3VzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
