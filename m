Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0D91E38DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WygN9Mtmmko+WMb4CLODuzufz8yKAQzeM2ls1kh5+eg=; b=ZQKXWhhUANLDZo
	aASWZRuUCP2o+L3spmKRkNsUbwljqKPNPo0+OOpa8qT5wW/zv3AKT8xjMFXjtfKAy+RVNhfxKsZpT
	Y5TP+h0yyG2X5JOpzcdHSEymO5qdCoF8qNG8tioFXq4HinwdI1vjbB8GM/t/ygy2WFytorf4lKBwZ
	mEU1dxzKpgZQHSmjKgGw+kRup1O89Jf3bLgK6ZZ9gFWx5RRys1jK5PnzqRFtk5hGJ+Aft1ZhMSWUC
	BheUauWQZVKrH7oxTf82WtEygod82W8dVeMdA3wyGjlWInRRVQ96F+mh5HaKe3Obyk4baocoSiAqz
	akXdqxHtjRH076VYkXhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpKE-0005Hm-UD; Wed, 27 May 2020 06:14:02 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpK4-0005HM-De
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 06:13:54 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailnew.nyi.internal (Postfix) with ESMTP id 136D858015D;
 Wed, 27 May 2020 02:13:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Wed, 27 May 2020 02:13:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=E
 b2Zi/zhilnTOPybbmMHYUfE4AbMTuPFBHFWd4pKlM0=; b=myNaYPVbSE/bsgXlo
 oh4J0u8+RKSeoWguDxEY1sniQ7H1CLC1DUviAOiluwRKnU+HbOGUuZQXNRH92lWn
 CP5Rzzec9LEJiCeN+Ff9mjBB0DtUDIXmTSEfL8YEB9+17DbglDtoNZZtLAE112b8
 khUyKiJoGNVLDnna8guU4qC6viBLzWj+GpxHIo+zB7CnjHOCd0ZQIRhw5/7m9vY/
 Yj7C3XWNAC5psU6dvjRIVURiZqOBz92Z36K206eTFf/bq/ifNgTTnjIbzBrZjg3q
 Tfkj4cn+eXDhKAyatRYD2Vos73K06V6H/Kfehk5y3ehIAXxgp+y+lvwrl/mj/r55
 dRbVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=Eb2Zi/zhilnTOPybbmMHYUfE4AbMTuPFBHFWd4pKl
 M0=; b=04/epPm1D2wOTZMoutIF3Vy4/qeeSFxcWJMBDeMEbBkgtQKqSRSnSMOuP
 /gSiDhieoS4U1l/io/57V91qWzaq94E9iqNG5x3+1uzOt1N8PZlrrvKTA5bwuEjK
 H/RJ21MzqkScKXfnSlFG8bF8IFtXLLyE4rVQD8vm9msqqG+whvogbzeAiN3PwFL3
 2CtWwAJEkOcUp0UmJx2OZu777Ztq0MM9E1DeUE8TxovPqN70Sj/y8GztY3jPPxEg
 Gbb6eZYmGz8SDs5j6BMtrLPmn0BjaZ1obMh0ov1ilOQ1jXwUwoS4Nt26hseAk59H
 dw1Eo3YDvM6aQ9oVRWwcgHcTa4bjg==
X-ME-Sender: <xms:FAXOXuTfGBXE5kLx25DxDcj_sCxZfhqZjcgi0OpCXQ4yZngNLi7H7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvfedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggugfgjsehtkeertddttddunecuhfhrohhmpefrvght
 vghrucfjuhhtthgvrhgvrhcuoehpvghtvghrrdhhuhhtthgvrhgvrhesfihhohdqthdrnh
 gvtheqnecuggftrfgrthhtvghrnhephfegveefhfekgfdukeffgeefkeevueelueeiuedt
 gfejieeigeekjedugffgtdeknecukfhppeduudejrddvtddrieekrddufedvnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphgvthgvrhdrhhhu
 thhtvghrvghrseifhhhoqdhtrdhnvght
X-ME-Proxy: <xmx:FAXOXjxI5LpjWDRAzHcUWqAxQAf4h4d5Ul0Tt1v-318sGVmhX9MyGA>
 <xmx:FAXOXr0ByUJVjIZSWpte5srYt6qvxn0jRdvS6-XPtrFnHbSaQFn-yg>
 <xmx:FAXOXqD3RMyRHhZhPEEBnmhr568wJN8cBugbgkBdZgCRQc2BLRgsQw>
 <xmx:FwXOXgGvrPIZuN89tFkYJWJdGLTbVFDnuMsKg91SzQPf79Zmc2DJsg>
Received: from koala (117-20-68-132.751444.bne.nbn.aussiebb.net
 [117.20.68.132])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7F09C3280060;
 Wed, 27 May 2020 02:13:30 -0400 (EDT)
Date: Wed, 27 May 2020 16:13:26 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
Message-ID: <20200527061326.GA531660@koala>
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <20200517225510.GA205823@koala> <20200518024034.GL89269@dtor-ws>
 <513f25c0-7125-c564-0090-052d626fe508@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <513f25c0-7125-c564-0090-052d626fe508@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_231352_598400_F54BF6FC 
X-CRM114-Status: GOOD (  27.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrzej,

On Fri, May 22, 2020 at 05:35:56PM +0200, Andrzej Pietrasiewicz wrote:
> Hi Hans, hi Dmitry,
> =

> W dniu 18.05.2020 o=A004:40, Dmitry Torokhov pisze:
> > Hi Hans, Peter,
> > =

> > On Mon, May 18, 2020 at 08:55:10AM +1000, Peter Hutterer wrote:
> > > On Fri, May 15, 2020 at 08:19:10PM +0200, Hans de Goede wrote:
> > > > Hi Andrezj,
> > > > =

> =

> <snip>
> =

> > > =

> > > > I also noticed that you keep the device open (do not call the
> > > > input_device's close callback) when inhibited and just throw away
> > > > any events generated. This seems inefficient and may lead to
> > > > the internal state getting out of sync. What if a key is pressed
> > > > while inhibited and then the device is uninhibited while the key
> > > > is still pressed?  Now the press event is lost and userspace
> > > > querying the current state will see the pressed key as being
> > > > released.
> > =

> > This is a good point. We should look into signalling that some events
> > have been dropped (via EV_SYN/SYN_DROPPED) so that clients are aware of
> > it.
> > =

> =

> It seems to me that the situation Hans envisions is not possible,
> or will not be possible with a simple change. Let me explain.
> =

> For a start, let's recall that the input core prevents consecutive
> events of the same kind (type _and_ code _and_ value) from being
> delivered to handlers. The decision is made in input_get_disposition().
> For EV_KEY it is:
> =

> 		if (is_event_supported(code, dev->keybit, KEY_MAX)) {
> =

> 			/* auto-repeat bypasses state updates */
> 			if (value =3D=3D 2) {
> 				disposition =3D INPUT_PASS_TO_HANDLERS;
> 				break;
> 			}
> =

> 			if (!!test_bit(code, dev->key) !=3D !!value) {
> =

> 				__change_bit(code, dev->key);
> 				disposition =3D INPUT_PASS_TO_HANDLERS;
> 			}
> 		}

note that this isn't per-process state, userspace can get release events
after open() for keys it never got the press event for. Simple test:
type evtest<enter> and KEY_ENTER up is the first event you'll get.

But otherwise I agree with you that press/release should always be balanced
if input_dev_release_keys() is called on inhibit and with that autorepeat
snippet below. At least I couldn't come up with any combination of multiple
clients opening/closing/inhibiting that resulted in an unwanted release
event after uninhibit.

Cheers,
   Peter

> Let's now focus on value !=3D 2 (events other than auto-repeat).
> The disposition changes from the default INPUT_IGNORE_EVENT to
> INPUT_PASS_TO_HANDLERS only when the event in question changes
> the current state: either by releasing a pressed key, or by
> pressing a released key. Subsequent releases of a released key
> or subsequent presses of a pressed key will be ignored.
>
> What Hans points out is the possibility of uninhibiting a device
> while its key is pressed and then releasing the key. First of all,
> during inhibiting input_dev_release_keys() is called, so input_dev's
> internal state will be cleared of all pressed keys. Then the device
> - after being uninhibited - all of a sudden produces a key release
> event. It will be ignored as per the "subsequent releases of a
> released key" case, so the handlers will not be passed an unmatched
> key release event. Assuming that passing an unmatched key release
> event was Hans's concern, in this case it seems impossible.
> =

> Now, the value of 2 (auto-repeat) needs some attention. There are two
> cases to consider: the device uses input core's software repeat or it
> uses its own (hardware) repeat.
> =

> Let's consider the first case. The timer which generates auto-repeat
> is only started on a key press event and only stopped on a key release
> event. As such, if any auto-repeat was in progress when inhibiting
> happened, it must have been stopped as per input_dev_release_keys().
> Then the key is pressed and held after the device has been inhibited,
> and the device is being uninhibited. Since it uses software auto-repeat,
> no events will be reported by the device until the key is released,
> and, as explained above, the release event will be ignored.
> =

> Let's consider the second case. The key is pressed and held after the
> device has been inhibited and the device is being uninhibited. The worst
> thing that can happen is unmatched key repeat events will start coming
> from the device. We must prevent them from reaching the handlers and
> ignore them instead. So I suggest something on the lines of:
> =

> if (is_event_supported(code, dev->keybit, KEY_MAX)) {
> =

> 			/* auto-repeat bypasses state updates */
> -			if (value =3D=3D 2) {
> +			if (value =3D=3D 2 && test_bit(code, dev->key)) {
> 				disposition =3D INPUT_PASS_TO_HANDLERS;
> 				break;
> 			}
> =

> The intended meaning is "ignore key repeat events if the key is not
> pressed".
> =

> With this small change I believe it is not possible to have neither
> unmatched release nor unmatched repeat being delivered to handlers.
> =

> Regards,
> =

> Andrzej

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
