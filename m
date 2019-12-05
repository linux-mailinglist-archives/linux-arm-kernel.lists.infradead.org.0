Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBDA114704
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p/DxEWa3Fci1OFPW6hMN4FLj1Sg7SsINL4vBMcgS054=; b=CzP0a1pToEjll9IFjhdS44PyI
	wZZzDkAMc4K1451UCignSbWuhuklEabt8gDVGOJIv2875TjyM87YboXe52gGdyPSNOnyo31NbBkl7
	Nflky2iyCdBNZfvv2stUqVn0Ec99i/OyTP/GaSCNekfVvqhAq8IniNEOodR7ymHqA+72guHh4ecFw
	3fdpnyB6y1poyLvZAYhCYSY0YuAH7FLrRXxDpG6VIbGENB2UVwN/DfeGiRQ+gcm/HerIs4Pl74xrm
	z5iIaKitEKTsdQM48MDKa5Dto5gGw9uTJBH4TUOTnh33txkD90VFk69BCLk3msDA9mwaNiPEf9GtJ
	JEFJ0ymOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icw3b-0001Xi-OT; Thu, 05 Dec 2019 18:40:55 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icw3Q-0001Vv-Ee
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:40:46 +0000
Received: by mail-qk1-x743.google.com with SMTP id m188so4236863qkc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 10:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=qNywU4SuN1/j02xrDEkCFwu3QGTs/dxNT1LnQRfHtF8=;
 b=SWsbU0RX9ejp98wgbcUO3NGwdBv2+KoYM3HfmeqAgo8nCEfWewtIInTnZUSYZIek7X
 M6XLBVGdTI+ewA74G5hKH4aOqZoxm9bhxZaMBgR7hR/Xpfcs1mc2Yb+vAZjjJJTS7JQB
 QE32m7U20m4tLxwCDz9x056pCb686+kGalOthXrJgEY8Y4iTot3KxsG63fUJtg1GnOvk
 6IQvCFh2GXQ8yVzWCma9yNbTgJXhTO3YhAblGG3QI6fSau/BCJucFOBrVzUI6k5FOgF6
 jzb2hIZwKpm4vSTl2GsTvp8lIJNh9p0LOdFTemNptMOly+ho6idb7VVmIR6bVJw9AYjR
 KjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=qNywU4SuN1/j02xrDEkCFwu3QGTs/dxNT1LnQRfHtF8=;
 b=e4AsaAJbq4XnWEJRyyNoCm6gndza1ho3z8BGz+Fy6vPdOjx8hEQSiKnXQRtEBS1wTL
 gJF9+WJHfCq+du/ysYiwDiHjKui7dw3w/qHEokzy4rvETzZJS7nuAmLvo6E9XYn8T2kc
 OMEe5TbRw1Ug3sw3PYGrls8s10SzvKMCf41YgCVM4aEmtZsywoZJMojSWvqnX/khC+n8
 Sbyvc8VCd1ZIQBU1hVObls+iyXm2MxWpMgbtW2J0FJq5nq32AHoFNnDM0Mvxk+IQ6OOP
 AHFuxVy37sG3kNp2Zf8Bg783EDAtD2NIy3s5yYc0S60Z8iRlzLh1yuavX3mQtOPbPYL7
 HKuQ==
X-Gm-Message-State: APjAAAXwrGehjYiJWTtXYWSa9Af7Mx4tHNoFKJgbTyKXMDhCc4FFmaRb
 U6mlaIitYf6D45Zp8fL8hLw7wg==
X-Google-Smtp-Source: APXvYqysLcRjcDifiharFt6ZbX+CalXc/vNS0LASHBpDag8561+j3VZG6UcBTwQL3KvSwnUZvv7oEA==
X-Received: by 2002:a05:620a:1366:: with SMTP id
 d6mr10102265qkl.86.1575571242801; 
 Thu, 05 Dec 2019 10:40:42 -0800 (PST)
Received: from tpx230-nicolas ([2610:98:8005::650])
 by smtp.gmail.com with ESMTPSA id 13sm5118928qke.85.2019.12.05.10.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 10:40:41 -0800 (PST)
Message-ID: <63a630f0760083d735ae02f5797ecd00530c7608.camel@ndufresne.ca>
Subject: Re: [PATCH 4/5] media: meson: vdec: add VP9 input support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org, 
 hans.verkuil@cisco.com
Date: Thu, 05 Dec 2019 13:40:39 -0500
In-Reply-To: <20191205092639.26330-1-narmstrong@baylibre.com>
References: <20191205092454.26075-1-narmstrong@baylibre.com>
 <20191205092639.26330-1-narmstrong@baylibre.com>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_104044_637155_8D43D935 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============9079864068627390907=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9079864068627390907==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-CCHdCL4ad1Oj02aHxg2r"


--=-CCHdCL4ad1Oj02aHxg2r
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 05 d=C3=A9cembre 2019 =C3=A0 10:26 +0100, Neil Armstrong a =C3=A9c=
rit :
> From: Maxime Jourdan <mjourdan@baylibre.com>
>=20
> Amlogic VP9 decoder requires an additional 16-byte payload before every
> frame header.

When I first saw this patch, I assumed data_offset was to be used (like
for venus), but I think what I'm reading is that the bitstream is
bounce into another buffer (ring buffer ?) and for this reason such an
offset is not needed. Maybe worth referring to how the header is being
added (e.g. while copying the data) ?=20

>=20
> Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/staging/media/meson/vdec/esparser.c | 142 +++++++++++++++++++-
>  1 file changed, 138 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/staging/media/meson/vdec/esparser.c b/drivers/stagin=
g/media/meson/vdec/esparser.c
> index adc5c1e81a4c..aeb68f6c732a 100644
> --- a/drivers/staging/media/meson/vdec/esparser.c
> +++ b/drivers/staging/media/meson/vdec/esparser.c
> @@ -52,6 +52,7 @@
>  #define PARSER_VIDEO_HOLE	0x90
> =20
>  #define SEARCH_PATTERN_LEN	512
> +#define VP9_HEADER_SIZE		16
> =20
>  static DECLARE_WAIT_QUEUE_HEAD(wq);
>  static int search_done;
> @@ -74,14 +75,121 @@ static irqreturn_t esparser_isr(int irq, void *dev)
>  	return IRQ_HANDLED;
>  }
> =20
> +/**
> + * VP9 frame headers need to be appended by a 16-byte long

nit: Maybe the use of "appending" is not appropriate as the header is
documented in the commit as being "before every frame header" ?

> + * Amlogic custom header
> + */
> +static int vp9_update_header(struct amvdec_core *core, struct vb2_buffer=
 *buf)
> +{
> +	u8 *dp;
> +	u8 marker;
> +	int dsize;
> +	int num_frames, cur_frame;
> +	int cur_mag, mag, mag_ptr;
> +	int frame_size[8], tot_frame_size[8];
> +	int total_datasize =3D 0;
> +	int new_frame_size;
> +	unsigned char *old_header =3D NULL;
> +
> +	dp =3D (uint8_t *)vb2_plane_vaddr(buf, 0);
> +	dsize =3D vb2_get_plane_payload(buf, 0);
> +
> +	if (dsize =3D=3D vb2_plane_size(buf, 0)) {
> +		dev_warn(core->dev, "%s: unable to update header\n", __func__);
> +		return 0;
> +	}
> +
> +	marker =3D dp[dsize - 1];
> +	if ((marker & 0xe0) =3D=3D 0xc0) {
> +		num_frames =3D (marker & 0x7) + 1;
> +		mag =3D ((marker >> 3) & 0x3) + 1;
> +		mag_ptr =3D dsize - mag * num_frames - 2;
> +		if (dp[mag_ptr] !=3D marker)
> +			return 0;
> +
> +		mag_ptr++;
> +		for (cur_frame =3D 0; cur_frame < num_frames; cur_frame++) {
> +			frame_size[cur_frame] =3D 0;
> +			for (cur_mag =3D 0; cur_mag < mag; cur_mag++) {
> +				frame_size[cur_frame] |=3D
> +					(dp[mag_ptr] << (cur_mag * 8));
> +				mag_ptr++;
> +			}
> +			if (cur_frame =3D=3D 0)
> +				tot_frame_size[cur_frame] =3D
> +					frame_size[cur_frame];
> +			else
> +				tot_frame_size[cur_frame] =3D
> +					tot_frame_size[cur_frame - 1] +
> +					frame_size[cur_frame];
> +			total_datasize +=3D frame_size[cur_frame];
> +		}
> +	} else {
> +		num_frames =3D 1;
> +		frame_size[0] =3D dsize;
> +		tot_frame_size[0] =3D dsize;
> +		total_datasize =3D dsize;
> +	}
> +
> +	new_frame_size =3D total_datasize + num_frames * VP9_HEADER_SIZE;
> +
> +	if (new_frame_size >=3D vb2_plane_size(buf, 0)) {
> +		dev_warn(core->dev, "%s: unable to update header\n", __func__);
> +		return 0;
> +	}
> +
> +	for (cur_frame =3D num_frames - 1; cur_frame >=3D 0; cur_frame--) {
> +		int framesize =3D frame_size[cur_frame];
> +		int framesize_header =3D framesize + 4;
> +		int oldframeoff =3D tot_frame_size[cur_frame] - framesize;
> +		int outheaderoff =3D  oldframeoff + cur_frame * VP9_HEADER_SIZE;
> +		u8 *fdata =3D dp + outheaderoff;
> +		u8 *old_framedata =3D dp + oldframeoff;
> +
> +		memmove(fdata + VP9_HEADER_SIZE, old_framedata, framesize);
> +
> +		fdata[0] =3D (framesize_header >> 24) & 0xff;
> +		fdata[1] =3D (framesize_header >> 16) & 0xff;
> +		fdata[2] =3D (framesize_header >> 8) & 0xff;
> +		fdata[3] =3D (framesize_header >> 0) & 0xff;
> +		fdata[4] =3D ((framesize_header >> 24) & 0xff) ^ 0xff;
> +		fdata[5] =3D ((framesize_header >> 16) & 0xff) ^ 0xff;
> +		fdata[6] =3D ((framesize_header >> 8) & 0xff) ^ 0xff;
> +		fdata[7] =3D ((framesize_header >> 0) & 0xff) ^ 0xff;
> +		fdata[8] =3D 0;
> +		fdata[9] =3D 0;
> +		fdata[10] =3D 0;
> +		fdata[11] =3D 1;
> +		fdata[12] =3D 'A';
> +		fdata[13] =3D 'M';
> +		fdata[14] =3D 'L';
> +		fdata[15] =3D 'V';
> +
> +		if (!old_header) {
> +			/* nothing */
> +		} else if (old_header > fdata + 16 + framesize) {
> +			dev_dbg(core->dev, "%s: data has gaps, setting to 0\n",
> +				__func__);
> +			memset(fdata + 16 + framesize, 0,
> +			       (old_header - fdata + 16 + framesize));
> +		} else if (old_header < fdata + 16 + framesize) {
> +			dev_err(core->dev, "%s: data overwritten\n", __func__);
> +		}
> +		old_header =3D fdata;
> +	}
> +
> +	return new_frame_size;
> +}
> +
>  /* Pad the packet to at least 4KiB bytes otherwise the VDEC unit won't t=
rigger
>   * ISRs.
>   * Also append a start code 000001ff at the end to trigger
>   * the ESPARSER interrupt.
>   */
> -static u32 esparser_pad_start_code(struct amvdec_core *core, struct vb2_=
buffer *vb)
> +static u32 esparser_pad_start_code(struct amvdec_core *core,
> +				   struct vb2_buffer *vb,
> +				   u32 payload_size)
>  {
> -	u32 payload_size =3D vb2_get_plane_payload(vb, 0);
>  	u32 pad_size =3D 0;
>  	u8 *vaddr =3D vb2_plane_vaddr(vb, 0);
> =20
> @@ -186,13 +294,27 @@ esparser_queue(struct amvdec_session *sess, struct =
vb2_v4l2_buffer *vbuf)
>  	int ret;
>  	struct vb2_buffer *vb =3D &vbuf->vb2_buf;
>  	struct amvdec_core *core =3D sess->core;
> +	struct amvdec_codec_ops *codec_ops =3D sess->fmt_out->codec_ops;
>  	u32 payload_size =3D vb2_get_plane_payload(vb, 0);
>  	dma_addr_t phy =3D vb2_dma_contig_plane_dma_addr(vb, 0);
> +	u32 num_dst_bufs =3D 0;
>  	u32 offset;
>  	u32 pad_size;
> =20
> -	if (esparser_vififo_get_free_space(sess) < payload_size)
> +	if (sess->fmt_out->pixfmt =3D=3D V4L2_PIX_FMT_VP9) {
> +		if (codec_ops->num_pending_bufs)
> +			num_dst_bufs =3D codec_ops->num_pending_bufs(sess);
> +
> +		num_dst_bufs +=3D v4l2_m2m_num_dst_bufs_ready(sess->m2m_ctx);
> +		if (sess->fmt_out->pixfmt =3D=3D V4L2_PIX_FMT_VP9)
> +			num_dst_bufs -=3D 2;
> +
> +		if (esparser_vififo_get_free_space(sess) < payload_size ||
> +		    atomic_read(&sess->esparser_queued_bufs) >=3D num_dst_bufs)
> +			return -EAGAIN;
> +	} else if (esparser_vififo_get_free_space(sess) < payload_size) {
>  		return -EAGAIN;
> +	}
> =20
>  	v4l2_m2m_src_buf_remove_by_buf(sess->m2m_ctx, vbuf);
> =20
> @@ -206,7 +328,19 @@ esparser_queue(struct amvdec_session *sess, struct v=
b2_v4l2_buffer *vbuf)
>  	vbuf->field =3D V4L2_FIELD_NONE;
>  	vbuf->sequence =3D sess->sequence_out++;
> =20
> -	pad_size =3D esparser_pad_start_code(core, vb);
> +	if (sess->fmt_out->pixfmt =3D=3D V4L2_PIX_FMT_VP9) {
> +		payload_size =3D vp9_update_header(core, vb);
> +
> +		/* If unable to alter buffer to add headers */
> +		if (payload_size =3D=3D 0) {
> +			amvdec_remove_ts(sess, vb->timestamp);
> +			v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
> +
> +			return 0;
> +		}
> +	}
> +
> +	pad_size =3D esparser_pad_start_code(core, vb, payload_size);
>  	ret =3D esparser_write_data(core, phy, payload_size + pad_size);
> =20
>  	if (ret <=3D 0) {

--=-CCHdCL4ad1Oj02aHxg2r
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXelPKAAKCRBxUwItrAao
HC3dAJ9ZJcMZtCud2LJf6EsofUzyD1VMDACgtXrUCNYTbD33BQoqjB8YK0nxcmU=
=7K0z
-----END PGP SIGNATURE-----

--=-CCHdCL4ad1Oj02aHxg2r--



--===============9079864068627390907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9079864068627390907==--


